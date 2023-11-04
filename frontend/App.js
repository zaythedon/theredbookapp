// React and Expo Realted Imports
import React from 'react';
import { StatusBar } from 'expo-status-bar';
import { Text, View, Button } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';

// Application Related Imports
import { styles as styles} from './styles.js';
import { CampusHome as CampusHome} from './CampusFeature/HomeScreen.js';

function HomeScreen({ navigation }) {
  return (
    <View style={styles.container}>
        <Text>Open up App.js to start working on your app!</Text>
        <Button
          title="Go To Campus Feature"
          onPress={() => navigation.navigate('CampusHome')}
        />
        <StatusBar style="auto" />
      </View>
  );
}

function DetailsScreen({ navigation }) {
  return (
    <View style={styles.container}>
      <Text>Details Screen</Text>
      <Button
          title="Click me"
          onPress={() => navigation.navigate('Home')}
        />
    </View>
  );
}

export const navStack = createNativeStackNavigator();

export default function App() {
  return (  // Build the stack of possible screens to navigate to from here.
    <NavigationContainer>{
      <navStack.Navigator>
        <navStack.Screen name="Home" component={HomeScreen} />
        <navStack.Screen name="Details" component={DetailsScreen} />
        <navStack.Screen name="CampusHome" component={CampusHome} />
      </navStack.Navigator>
    }</NavigationContainer>
  );
}


