const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.sendMessageNotification = functions.firestore
  .document("chats/{chatID}/messages/{message}")
  .onCreate(async (queryDocumentSnapshot, context) => {
    console.log("New Message Sent");

    // the actual message document that was created
    const messageDoc = queryDocumentSnapshot.data();

    // This value helps us increment the notifications field in the
    //user doc that we will use for app badge count
    console.log("Incrementing notification count.....");
    const FieldValue = require("firebase-admin").firestore.FieldValue;

    // Increment notification count
    await admin
      .firestore()
      .collection("users")
      .doc(messageDoc.receivingUserID)
      .update({
        notifications: FieldValue.increment(1),
      });
    console.log("Notification count incremented");
    console.log("Retrieving User Doc .....");

    // Access the data of the receiving user after we
    //? We could maybe return the value of the doc after updating in the code above?
    const receivingUserDoc = await admin
      .firestore()
      .collection("users")
      .doc(messageDoc.receivingUserID)
      .get();
    console.log("User Doc Retrieved");

    // The data from the receiving users document after we updates
    const receivingUserData = receivingUserDoc.data();

    // the actual count of the notifications field
    const notificationCount = receivingUserData.notifications;
    // the Firebase Cloud Messaging Token user to identity what device to send the notification to.
    const fcmToken = receivingUserData.fcmToken;

    console.log("Notification Count:", notificationCount);

    // The payload to be sent in the notification
    const message = {
      notification: {
        title: messageDoc.sendingUsername,
        body: messageDoc.message,
      },
      token: fcmToken,
      apns: {
        payload: {
          aps: {
            contentAvailable: true,
            badge: notificationCount,
          },
        },
      },
      android: {
        priority: "high",
      },
    };

    // This sends the payload to the device
    await admin
      .messaging()
      .send(message)
      .then((response) => {
        console.log("Successfully sent message:", response);
      })
      .catch((error) => {
        console.log("Error sending message:", error);
      });
  });

exports.gameJoinedNotification = functions.firestore
  .document("games/{gameID}/players/{playerID}")
  .onCreate(async (queryDocumentSnapshot, context) => {
    const gameID = context.params.gameID;
    // Get the Game Doc
    const gameDoc = await admin
      .firestore()
      .collection("games")
      .doc(gameID)
      .get();
    const gameDocData = gameDoc.data();
    console.log("A New Player Joined: ", gameDocData.title);

    // the actual player document that was created
    const playerDoc = queryDocumentSnapshot.data();
    // check if they have a display name or not , other wise use their first and last name
    const playerName =
      playerDoc.displayName == ""
        ? playerDoc.firstName + " " + playerDoc.lastName
        : playerDoc.displayName;

    // This value helps us increment the notifications field in the
    // game creator doc that we will use for app badge count
    console.log("Incrementing notification count.....");
    const FieldValue = require("firebase-admin").firestore.FieldValue;

    // Increment notification count
    await admin
      .firestore()
      .collection("users")
      .doc(gameDocData.creator.id)
      .update({
        notifications: FieldValue.increment(1),
      });
    console.log("Notification count incremented");
    console.log("Retrieving User Doc .....");

    // Access the data of the receiving user after we
    //? We could maybe return the value of the doc after updating in the code above?
    const gameCreatorUserDoc = await admin
      .firestore()
      .collection("users")
      .doc(gameDocData.creator.id)
      .get();
    console.log("User Doc Retrieved");

    // The data from the receiving users document after we updates
    const gameCreatorUserDocData = gameCreatorUserDoc.data();

    // the actual count of the notifications field
    const notificationCount = gameCreatorUserDocData.notifications;
    // the Firebase Cloud Messaging Token user to identity what device to send the notification to.
    const fcmToken = gameCreatorUserDocData.fcmToken;

    console.log("Notification Count:", notificationCount);

    // The payload to be sent in the notification
    const message = {
      notification: {
        title: gameDocData.title,
        body: playerName + " joined your game",
      },
      token: fcmToken,
      apns: {
        payload: {
          aps: {
            contentAvailable: true,
            badge: notificationCount,
          },
        },
      },
      android: {
        priority: "high",
      },
    };

    // This sends the payload to the device
    await admin
      .messaging()
      .send(message)
      .then((response) => {
        console.log("Successfully sent message:", response);
      })
      .catch((error) => {
        console.log("Error sending message:", error);
      });
  });

exports.sendGameMessageNotification = functions.firestore
  .document("games/{gameID}/messages/{message}")
  .onCreate(async (queryDocumentSnapshot, context) => {
    const gameID = context.params.gameID;

    const gameDoc = await admin
      .firestore()
      .collection("games")
      .doc(gameID)
      .get();

    const gameDocData = gameDoc.data();

    console.log("New Message Sent In: ", gameDocData.title);

    // the actual message document that was created
    const messageDoc = queryDocumentSnapshot.data();

    // This value helps us increment the notifications field in the
    //user doc that we will use for app badge count
    const FieldValue = require("firebase-admin").firestore.FieldValue;
    console.log("Incrementing notification count.....");

    // Get a list of all the players in this game
    const playersDocs = await admin
      .firestore()
      .collection("games")
      .doc(gameID)
      .collection("players")
      .get();

    //* Next we get the FCM Toke for each player and send them a notification
    //* We also increase their notifications count
    playersDocs.forEach(async (playerDoc) => {
      //Check if the user is not the send before we send a notification
      if (playerDoc.data().id != messageDoc.senderID) {
        console.log("Incrementing notification count.....");
        // Increment notification count
        await admin
          .firestore()
          .collection("users")
          .doc(playerDoc.data().id)
          .update({
            notifications: FieldValue.increment(1),
          });
        console.log("Notification count incremented");

        // Retrieve document after uploading
        console.log("Retrieving User Doc .....");
        const updatedPlayerDoc = await admin
          .firestore()
          .collection("users")
          .doc(playerDoc.data().id)
          .get();
        console.log("User Doc Retrieved");

        // The data from the receiving users document after we updates
        const updatedPlayerDocData = updatedPlayerDoc.data();

        // Check if there even is a fcmToken field, if not return an empty string
        const fcmToken =
          updatedPlayerDocData.fcmToken == null
            ? ""
            : updatedPlayerDocData.fcmToken;

        if (fcmToken != "") {
          // the actual count of the notifications field
          const notificationCount = updatedPlayerDocData.notifications;
          console.log("Notification Count:", notificationCount);

          // The payload to be sent in the notification

          const message = {
            notification: {
              title: messageDoc.senderName + " in" + gameDocData.title,
              body: messageDoc.message,
            },
            token: fcmToken,
            apns: {
              payload: {
                aps: {
                  contentAvailable: true,
                  badge: notificationCount,
                },
              },
            },
            android: {
              priority: "high",
            },
          };

          // This sends the payload to the device
          await admin
            .messaging()
            .send(message)
            .then((response) => {
              console.log("Successfully sent message:", response);
            })
            .catch((error) => {
              console.log("Error sending message:", error);
            });
        }
      } else {
        console.log("fcmToken is not set");
      }
    });
  });
