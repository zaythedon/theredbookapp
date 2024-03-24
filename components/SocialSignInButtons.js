import { View, Text } from "react-native";
import React from "react";
import CustomButton from "./CustomButton";

const SocialSignInButtons = () => {
  const onSignInWithApple = () => {
    console.warn("onSignInWithApple");
  };
  const onSignInWithGoogle = () => {
    console.warn("onSignInWithGoogle");
  };

  return (
    <>
      <CustomButton
        text="Sign In with Google"
        onPress={onSignInWithGoogle}
        backgroundColor="#FAE9EA"
        foregroundColor="#DD4D44"
      />

      <CustomButton
        text="Sign In with Apple"
        onPress={onSignInWithApple}
        backgroundColor="#e3e3e3"
        foregroundColor="#363636"
      />
    </>
  );
};

export default SocialSignInButtons;
