import { StyleSheet } from 'react-native';

export const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: '#fff',
      alignItems: 'center',
      justifyContent: 'center',
    },

    fixToText: {
      flexDirection: 'row',
      justifyContent: 'space-between',
    },

    separator: {
      marginVertical: 8,
      borderBottomColor: '#737373',
      borderBottomWidth: StyleSheet.hairlineWidth,
    },

    input: {
      height: 40,
      margin: 12,
      borderWidth: 1,
      padding: 10,
    },
  });