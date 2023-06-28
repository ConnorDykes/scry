const functions = require("firebase-functions");
import {
    onDocumentWritten,
    onDocumentCreated,
    onDocumentUpdated,
    onDocumentDeleted,
    Change,
    FirestoreEvent
  } from "firebase-functions/v2/firestore";
const admin = require('firebase-admin')
admin.initializeApp()


exports.sendMessageNotification = onDocumentWritten('chats/{chatID}/messages/{message}', (event) => {
    var messageDoc = event.data.after.data();
    


 });


functions.firestore
.document('chatRooms/{chatRoomID}/chats/{docId}')
.onCreate((snap, context) => {
  console.log('----------------start function--------------------')

  const doc = snap.data()
  console.log(doc)

  const idFrom = doc.sendByUUID
  const idTo = doc.sendToUUID
  const contentMessage = doc.message
  const nameFrom = doc.sendBy

  // Get push token user to (receive)
  exports.sendNotification = functions.firestore
   .document('chats/{chatID}/messages/{message}')
   .onCreate((snap, context) => {
     console.log('----------------start function--------------------')

     const doc = snap.data()
     console.log(doc)

     const idFrom = doc.sendByUUID
     const idTo = doc.sendToUUID
     const contentMessage = doc.message
     const nameFrom = doc.sendBy

     // Get push token user to (receive)
     admin
       .firestore()
       .collection('Users')
       .where('UUID', '==', idTo)
       .get()
       .then(querySnapshot => {
         querySnapshot.forEach(userTo => {
           if (userTo.data().chattingWith != idFrom) {
             // Get user info from (sent)
             admin
               .firestore()
               .collection('Users')
               .where('UUID', '==', idFrom)
               .get()
               .then(querySnapshot2 => {
                 querySnapshot2.forEach(userFrom => {
                 const badgeNumber = userTo.data()["Notifications"]
                   const payload = {
                     notification: {
                       title: nameFrom,
                       body: contentMessage,
                       clickAction: 'FLUTTER_NOTIFICATION_CLICK',
                       sound: 'default',
                       badge: badgeNumber.toString()
                     }
                   }
                   // push to the target device
                   admin
                     .messaging()
                     .sendToDevice(userTo.data().Token, payload)
                     .then(response => {
                       console.log('Successfully sent message:', response)
                     })
                     .catch(error => {
                       console.log('Error sending message:', error)
                     })
                 })
               })
           } else {
             console.log('Can not find pushToken target user')
           }
         })
       })
     return null
   });
});
// // Create and deploy your first functions
// // https://firebase.google.com/docs/functions/get-started
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
