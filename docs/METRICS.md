[HEART Framework](https://docs.google.com/presentation/d/1nb7YB5qWDqtQdc7LXKEaZ4tsiRrVaHIRAEXRipWcFGs/edit?usp=sharing)

- **Metric 1: Low Churn Rate** 
  - Track Inactivity: In Firebase User Collection, add a last_active (timestamp) field. Update this field using an action on app's home page
  - Log Custom Churn Events: Identify actions that indicate churn (e.g., clicking "Delete Account" or canceling a subscription). Use the "Log Event" action in FlutterFlow to send a user_churned event to Firebase Analytics.

- **Metric 2: Number of Registered Users**
  - Track User Login time: In Firebase user collection, we are able to see the time that a user logs into the app itself.
  - Track new Users weekly: For a set amount of weeks, identify how many new users on average register for the app based off of features we've tested on (rating the app, etc)

- **Metric 3: Amount of Sessions Per Returning User on Average**
  - Track Returning Users: In Firebase User Collection, add a created_at timestamp field. Users with accounts older than 30 days are flagged as returning users.
  - Log Workout Sessions: Use FlutterFlow's "Log Event" action to send a workout_completed event to Firebase Analytics when a user taps "End Workout."
  - Calculate Average: Divide total workout_completed events from returning users by total returning users.
 
- **Metric 4: First Workout Completion Rate**
  - Track New Users: In Firebase User Collection, use the created_at timestamp to identify users who signed up within the last 7 days.
  - Log First Workout Events: Use FlutterFlow’s "Log Event" action to send a first_workout_started event when a user begins their first session and a first_workout_completed event when they finish it.
  - Calculate Completion Rate: Divide the number of first_workout_completed events by the number of first_workout_started events for new users to determine the percentage of users who successfully complete their first workout.
