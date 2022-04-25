contract main {




// =====================  Runtime code  =====================


#
#  - ads(uint256 arg1)
#  - destroyAll()
#  - sub_7d9339cd(?)
#  - sub_9b07a0d7(?)
#  - destroy(uint256 arg1)
#  - sub_c2e4dc7d(?)
#
address owner;
address devAddress;
array of address adOwner;
uint256 weiPixelPrice;
uint256 pixelsPerCell;

function sub_12d1f110(?) {
    return pixelsPerCell
}

function pixelsPerCell() {
    return pixelsPerCell
}

function grid(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 100
    require arg2 < 100
    return bool(stor((0.03125 / arg2) + (4 * arg1) + 5)[uint8(arg2)])
}

function sub_1ab93534(?) {
    return weiPixelPrice
}

function getAdOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= adOwner.length:
        revert with 'NH{q', 50
    return adOwner[arg1]
}

function getAdsLength() {
    return adOwner.length
}

function owner() {
    return owner
}

function devaddr() {
    return devAddress
}

function weiPixelPrice() {
    return weiPixelPrice
}

function getDevAddress() {
    return devAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_793710f7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    weiPixelPrice = arg1
    emit 0xf85a44f0: msg.sender, arg1
}

function sub_8cd11323(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pixelsPerCell = arg1
    emit 0xca9e27b9: msg.sender, arg1
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call devAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAdOwner(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= adOwner.length:
        revert with 'NH{q', 50
    if adOwner[arg1] != msg.sender:
        revert with 0, 'Only owner allowed'
    adOwner[arg1] = arg2
    emit SetAdOwner(msg.sender, arg2, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
