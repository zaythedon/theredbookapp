import { View, Text, StyleSheet } from "react-native";
const Messages = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.text}>Messages Screen</Text>
    </View>
  );
};

export default Messages;

const styles = StyleSheet.create({
  container: {
    backgroundColor: "#fafafa",
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  text: {
    fontSize: 24,
    fontWeight: "bold",
    justifyContent: "center",
  },
});
