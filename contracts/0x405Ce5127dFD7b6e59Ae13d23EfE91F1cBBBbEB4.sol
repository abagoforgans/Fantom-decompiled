contract main {




// =====================  Runtime code  =====================


#
#  - regUser(uint256 arg1, uint256 arg2)
#
address stor0;
uint256 currUserID;
uint256 sub_9b444b60;
uint256 stor4;
mapping of struct users;
mapping of address userList;
mapping of uint256 stor7;
uint256 stor8;
uint256 sub_44b37ca3;
uint256 sub_93780c58;
uint256 sub_69ab0af5;

function sub_44b37ca3(?) {
    return sub_44b37ca3
}

function sub_69ab0af5(?) {
    return sub_69ab0af5
}

function sub_93780c58(?) {
    return sub_93780c58
}

function sub_9b444b60(?) {
    return sub_9b444b60
}

function userList(uint256 arg1) {
    require calldata.size - 4 >= 32
    return userList[arg1]
}

function currUserID() {
    return currUserID
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return bool(users[arg1].field_0), 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280,
           users[arg1].field_1536,
           users[arg1].field_1792,
           users[arg1].field_2048,
           users[arg1].field_2304,
           users[arg1].field_2560,
           users[arg1].field_2816,
           users[arg1].field_3072,
           users[arg1].field_3328
}

function _fallback() payable {
    revert
}

function getRegistrationFess() {
    return (stor8 / 10^18)
}

function setWelcomeMessage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x72426c6f636b636861696e20746563686e6f6c6f67792063616e206368616e67652074686520776f726c,
                    mem[206 len 22]
    stor8 = arg1
    stor7[1] = stor8 / 6
    stor7[2] = stor8 / 6 / 20
    sub_44b37ca3 = stor8 / 6
    sub_93780c58 = stor8 / 6
    require stor4
    sub_69ab0af5 = stor8 / 6 / stor4
    sub_9b444b60 = stor8 / 6 / 20
}



}
