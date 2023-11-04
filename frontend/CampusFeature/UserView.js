import React, {useState} from 'react';
import { Text, View, Button, TextInput } from 'react-native';
import { styles as styles } from '../styles.js';
import { User as UserModel } from './Model/User.js';

let user = UserModel.buildTestUser();


export function UserView({ navigation }) {
    const [nameText, setNameText] = useState('nameTest');
    const [nameInput, setNameInput] = useState('nameInTest');
    return (
    <View style={styles.container}>
        <Text>This User View Placeholder with basic Fuctions</Text>
        <Button
            title="Build Test User"
            onPress={() => user = UserModel.buildTestUser()}
        />
        
        <TextInput
            style={styles.input}
            value={nameInput}
            placeholder='Name Here'
            onChangeText={newText => setNameInput(newText)}
            defaultValue={nameInput}
        />
        <View style={styles.fixToText}>
            <Button
                title="Get Name"
                onPress={() => setNameText(user.getName())}
            />
            <Button
                title="Set Name"
                onPress={() => user.setName(nameInput)}
            />
        </View>
        <Text>{nameText}</Text>
    </View>
    );

}

