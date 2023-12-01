import { DesignatedMonitor } from "./DesignatedMonitor";
import { SymposiumUser } from "./User";

// User Factory

export function BuildSymposuimUser(name, id, host = false){
    if (!host){
        return new SymposiumUser(name);
    }
    else if (host){
        return new DesignatedMonitor(name);
    }
}