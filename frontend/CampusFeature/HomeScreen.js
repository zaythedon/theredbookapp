// UI Components
import { Text, View, Button } from 'react-native';
import { styles as styles } from '../styles.js';
import { createNativeStackNavigator } from '@react-navigation/native-stack';

// Application Imports
import { UserView as UserView} from './UserView.js';

const campusStack = createNativeStackNavigator();

export function CampusHome() {
    return (
        <campusStack.Navigator>
            <campusStack.Screen name="Home" component={Home} />
            <campusStack.Screen name="UserView" component={UserView} />
        </campusStack.Navigator>  
    );
}

function Home({ navigation }){
    return (
        <View style={styles.container}>
            <Text>This Is the Campus Home Placeholder</Text>
            <Button
                title="Click me"
                onPress={() => navigation.navigate('UserView')}
            />
        </View>
    );
}