import { View, Text, StyleSheet } from "react-native";
const Create = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.text}>Create (Post) Screen</Text>
    </View>
  );
};

export default Create;

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
