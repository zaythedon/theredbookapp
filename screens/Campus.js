import { View, Text, StyleSheet } from "react-native";
const Campus = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.text}>Campus Screen</Text>
    </View>
  );
};

export default Campus;

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
