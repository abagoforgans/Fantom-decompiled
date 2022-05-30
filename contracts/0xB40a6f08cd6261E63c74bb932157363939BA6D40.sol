contract main {




// =====================  Runtime code  =====================


#
#  - sub_aec1986d(?)
#
const gettrxBalance = eth.balance(this.address)


address ownerWallet;
uint256 currUserID;
uint256 unlimited_level_price;
uint256 batchSize;
uint256 height;
mapping of struct users;
mapping of address userList;
mapping of uint256 lEVEL_PRICE;
uint256 registrationFess;
array of struct requests;
uint256 sub_27aee3de;
uint256 sub_4f64e012;
uint256 sub_69ab0af5;

function height() {
    return height
}

function sub_27aee3de(?) {
    return sub_27aee3de
}

function sub_4f64e012(?) {
    return sub_4f64e012
}

function sub_69ab0af5(?) {
    return sub_69ab0af5
}

function LEVEL_PRICE(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lEVEL_PRICE[arg1]
}

function unlimited_level_price() {
    return unlimited_level_price
}

function requests(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < requests.length
    return bool(requests[arg1].field_0), 
           requests[arg1].field_256,
           requests[arg1].field_512,
           requests[arg1].field_768,
           requests[arg1].field_1024,
           requests[arg1].field_1280,
           requests[arg1].field_1536,
           requests[arg1].field_1792,
           requests[arg1].field_2048,
           requests[arg1].field_2304,
           requests[arg1].field_2560,
           requests[arg1].field_2816,
           requests[arg1].field_3072,
           requests[arg1].field_3328
}

function ownerWallet() {
    return ownerWallet
}

function userList(uint256 arg1) {
    require calldata.size - 4 >= 32
    return userList[arg1]
}

function currUserID() {
    return currUserID
}

function sub_a826967c(?) {
    return registrationFess
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

function getRegistrationFess() {
    return registrationFess
}

function batchSize() {
    return batchSize
}

function _fallback() payable {
    revert
}

function setRegistrationFess(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ownerWallet != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4f6e6c79204f776e65722063616e2061636365737320746869732066756e6374696f6e,
                    mem[200 len 28]
    registrationFess = arg1
    registrationFess = 10^18 * registrationFess
    lEVEL_PRICE[1] = registrationFess / 6
    lEVEL_PRICE[2] = registrationFess / 6 / 20
    sub_27aee3de = registrationFess / 6
    sub_4f64e012 = registrationFess / 6
    require height
    sub_69ab0af5 = registrationFess / 6 / height
    unlimited_level_price = registrationFess / 6 / 20
}



}
