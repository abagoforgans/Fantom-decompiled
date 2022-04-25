contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 basePrice;
uint256 sub_e5efa287;

function sub_4e2469a6(?) {
    return sub_e5efa287
}

function basePrice() {
    return basePrice
}

function sub_e5efa287(?) {
    return sub_e5efa287
}

function _fallback() payable {
    revert
}

function pixels(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 1000
    require arg2 < 1000
    return address(stor[(3 * arg2) + (3000 * arg1)]), 
           uint256(stor[(3 * arg2) + (3000 * arg1) + 1]),
           Mask(24, 232, stor[(3 * arg2) + (3000 * arg1) + 2] % 16777216)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == 0x170573117343922cc767913e4421c107e428161b
    call 0x170573117343922cc767913e4421c107e428161b with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function colorPixel(uint256 arg1, uint256 arg2, bytes3 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(24, 232, arg3)
    if arg1 >= 1000:
        revert with 'NH{q', 50
    if arg2 >= 1000:
        revert with 'NH{q', 50
    if uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) > -(uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) / 5) - 1:
        revert with 'NH{q', 17
    require msg.value >= uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) + (uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) / 5)
    if not address(stor[(3 * arg2) + (3000 * arg1)]):
        require msg.value >= basePrice
        address(stor[(3 * arg2) + (3000 * arg1)]) = msg.sender
        uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) = basePrice
        uint256(stor[(3 * arg2) + (3000 * arg1) + 2]) = arg3 % 16777216 >> 232 or Mask(232, 24, uint256(stor[(3 * arg2) + (3000 * arg1) + 2]))
    else:
        address(stor[(3 * arg2) + (3000 * arg1)]) = msg.sender
        uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) = msg.value
        uint256(stor[(3 * arg2) + (3000 * arg1) + 2]) = arg3 % 16777216 >> 232 or Mask(232, 24, uint256(stor[(3 * arg2) + (3000 * arg1) + 2]))
        if uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) > -(uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) / 10) - 1:
            revert with 'NH{q', 17
        call address(stor[(3 * arg2) + (3000 * arg1)]) with:
           value uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) + (uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) / 10) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x7a4fe4a4: arg1, arg2, address(stor[(3 * arg2) + (3000 * arg1)]), uint256(stor[(3 * arg2) + (3000 * arg1) + 1]), Mask(24, 232, stor[(3 * arg2) + (3000 * arg1) + 2] % 16777216)
}



}
