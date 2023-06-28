const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.sendMessageNotification = functions.firestore
  .document("chats/{chatID}/messages/{message}")
  .onCreate(async (queryDocumentSnapshot, eventContext) => {
    console.log("New Message Sent");
    const messageDoc = queryDocumentSnapshot.data();

    console.log("Incrementing notification count.....");
    const FieldValue = require('firebase-admin').firestore.FieldValue;

    // Increment notification count
    await admin
      .firestore()
      .collection("users")
      .doc(messageDoc.receivingUserID)
      .update({
        notifications: FieldValue.increment(1),
      });
    console.log("Notification count incremented");
    console.log("Retreiving User Doc .....");

    // access the data of the receiving user
    const receivingUserDoc = await admin
      .firestore()
      .collection("users")
      .doc(messageDoc.receivingUserID)
      .get();
    console.log("User Doc Retrieved");

    const receivingUserData = receivingUserDoc.data();

    const notificationCount = receivingUserData.notifications;
    const  fcmToken = receivingUserData.fcmToken;

    console.log("Notification Count:", notificationCount);

    const message = {
      notification: {
        title: messageDoc.sendingUsername,
        body: message,
        clickAction: "FLUTTER_NOTIFICATION_CLICK",
        sound: "default",
        badge: notificationCount,
      },
      token: fcmToken,
    };

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
