import { StatusBar } from "expo-status-bar";
import { SafeAreaView, StyleSheet, Text, View } from "react-native";
import Navigation from "./navigator/Navigation";
import { NavigationContainer } from "@react-navigation/native";
import TabNavigator from "./navigator/TabNavigator";

export default function App() {
  return (
    <SafeAreaView style={styles.root}>
      <Navigation />
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  root: {
    flex: 1,
    backgroundColor: "#f9fbfc",
  },
  tabBar: {
    backgroundColor: "#6bc2be",
  },
});
