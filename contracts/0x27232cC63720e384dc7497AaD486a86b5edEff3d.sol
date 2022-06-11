contract main {




// =====================  Runtime code  =====================


address rarityAddress;
address goldAddress;
uint256 trades;
uint256 sub_ebddb3a6;
mapping of struct sub_af70e748;

function trades() payable {
    return trades
}

function sub_af70e748(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_af70e748[address(arg1)][address(arg2)].field_0, 
           sub_af70e748[address(arg1)][address(arg2)].field_256,
           sub_af70e748[address(arg1)][address(arg2)].field_512,
           sub_af70e748[address(arg1)][address(arg2)].field_768,
           sub_af70e748[address(arg1)][address(arg2)].field_1024,
           bool(sub_af70e748[address(arg1)][address(arg2)].field_1280),
           sub_af70e748[address(arg1)][address(arg2)].field_1536
}

function sub_ebddb3a6(?) payable {
    return sub_ebddb3a6
}

function gold() payable {
    return goldAddress
}

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function sub_b4ded008(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RarityMarket: Cannot use empty address for tradeableItemContract'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RarityMarket: Unable to submit trade with price 0'
    require ext_code.size(address(arg1))
    staticcall address(arg1).allowance(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg4, sub_ebddb3a6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        revert with 0, 'RarityMarket: Market Owner is not approved for spend'
    if 1 > !trades:
        revert with 0, 17
    if trades > -2:
        revert with 0, 17
    trades++
    sub_af70e748[address(arg1)][msg.sender].field_0 = arg4
    sub_af70e748[address(arg1)][msg.sender].field_256 = msg.sender
    sub_af70e748[address(arg1)][msg.sender].field_512 = arg3
    sub_af70e748[address(arg1)][msg.sender].field_768 = address(arg1)
    sub_af70e748[address(arg1)][msg.sender].field_1024 = arg2
    sub_af70e748[address(arg1)][msg.sender].field_1280 = 0
    sub_af70e748[address(arg1)][msg.sender].field_1536 = trades + 1
    emit 0x74d32d3d: arg4, msg.sender, arg3, arg2, address(arg1), trades + 1
    return (trades + 1)
}

function sub_2bd46dd5(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RarityMarket: Cannot use empty address for tradeableItemContract'
    if sub_af70e748[address(arg1)][address(arg2)].field_1280:
        revert with 0, 'RarityMarket: Trade is already fullfilled'
    require ext_code.size(goldAddress)
    staticcall goldAddress.transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args sub_ebddb3a6, sub_af70e748[address(arg1)][address(arg2)].field_0, arg4, sub_af70e748[address(arg1)][address(arg2)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'RarityMarket: Unable to transfer gold seller'
    sub_af70e748[address(arg1)][address(arg2)].field_1280 = 1
    require ext_code.size(address(arg1))
    staticcall address(arg1).transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args sub_ebddb3a6, sub_af70e748[address(arg1)][address(arg2)].field_0, arg4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'RarityMarket: Unable to transfer item to buyer'
    emit 0xebc4a2dc: sub_af70e748[address(arg1)][address(arg2)].field_256, msg.sender, sub_af70e748[address(arg1)][address(arg2)].field_0, arg4, sub_af70e748[address(arg1)][address(arg2)].field_512, arg3, address(arg1), sub_af70e748[address(arg1)][address(arg2)].field_1536
    return 1
}



}
