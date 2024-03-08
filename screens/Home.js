import { View, Text, StyleSheet } from "react-native";
const Home = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.text}>Home (Reviews) Screen</Text>
    </View>
  );
};

export default Home;

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
