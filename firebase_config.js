const firebaseConfig = {
  apiKey: "AIzaSyDwLMVSuFBMZckwXThCqkzAKHPBoqlxnFo",
  authDomain: "maxtny-3eef8.firebaseapp.com",
  databaseURL: "https://maxtny-3eef8-default-rtdb.asia-southeast1.firebasedatabase.app/",
  projectId: "maxtny-3eef8",
  storageBucket: "maxtny-3eef8.firebasestorage.app",
  messagingSenderId: "565780790687",
  appId: "1:565780790687:web:dfb0f0e8046de226e111aa",
  measurementId: "G-BS2Y98Z2B6"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);
const database = typeof firebase.database === 'function' ? firebase.database() : null;
const auth = typeof firebase.auth === 'function' ? firebase.auth() : null;
const storage = typeof firebase.storage === 'function' ? firebase.storage() : null;

// Helper to check login status
function checkAuth() {
    auth.onAuthStateChanged((user) => {
        if (!user) {
            window.location.href = 'login.html';
        }
    });
}
