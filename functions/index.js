const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.sendMessageNotification = functions.firestore
  .document("chats/{chatID}/messages/{message}")
  .onCreate(async (queryDocumentSnapshot, eventContext) => {
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
