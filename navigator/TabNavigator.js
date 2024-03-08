import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import { StyleSheet } from "react-native";
import Home from "../screens/Home";
import Campus from "../screens/Campus";
import Create from "../screens/Create";
import Inbox from "../screens/Inbox";
import Messages from "../screens/Messages";
import Ionicons from "@expo/vector-icons/Ionicons";

const Tab = createBottomTabNavigator();

const TabNavigator = () => {
  return (
    <Tab.Navigator
      screenOptions={{
        tabBarActiveTintColor: "white",
        tabBarInactiveTintColor: "#071E22",
        tabBarStyle: styles.tabBar,
      }}
    >
      <Tab.Screen
        name="Home"
        component={Home}
        options={{
          tabBarIcon: ({ color }) => (
            <Ionicons name="home" size={20} color={color} />
          ),
          headerStyle: styles.tabHeader,
        }}
      />
      <Tab.Screen
        name="Campus"
        component={Campus}
        options={{
          tabBarIcon: ({ color }) => (
            <Ionicons name="book" size={20} color={color} />
          ),
          headerStyle: styles.tabHeader,
        }}
      />
      <Tab.Screen
        name="Create"
        component={Create}
        options={{
          tabBarIcon: ({ color }) => (
            <Ionicons name="add-circle-outline" size={20} color={color} />
          ),
          headerStyle: styles.tabHeader,
        }}
      />
      <Tab.Screen
        name="Inbox"
        component={Inbox}
        options={{
          tabBarIcon: ({ color }) => (
            <Ionicons name="mail" size={20} color={color} />
          ),
          headerStyle: styles.tabHeader,
          tabBarBadge: 3,
          tabBarBadgeStyle: styles.tabBarBadge,
        }}
      />
      <Tab.Screen
        name="Messages"
        component={Messages}
        options={{
          tabBarIcon: ({ color }) => (
            <Ionicons name="chatbox" size={20} color={color} />
          ),
          headerStyle: styles.tabHeader,
          tabBarBadge: 5,
          tabBarBadgeStyle: styles.tabBarBadge,
        }}
      />
    </Tab.Navigator>
  );
};

export default TabNavigator;

const styles = StyleSheet.create({
  tabBar: {
    backgroundColor: "#83d4d0",
  },
  tabHeader: {
    backgroundColor: "#fafafa",
  },
  tabBarBadge: {
    backgroundColor: "red",
  },
});
