contract main {




// =====================  Runtime code  =====================


address _owner;
address sub_9fee3926Address;
address WETHAddress;
uint256 sub_46d58601;
address USDCAddress;
uint256 sub_7bf42165;
uint256 sub_48a23d6b;
address sub_ec74b248Address;
address TOKENAddress;
uint256 tokenDecimals;
uint256 sub_17f76316;
uint256 lastRebase;
uint256 sub_101e8c03;
uint256 lastExchangeRate;

function sub_101e8c03(?) payable {
    return sub_101e8c03
}

function sub_17f76316(?) payable {
    return sub_17f76316
}

function tokenDecimals() payable {
    return tokenDecimals
}

function sub_46d58601(?) payable {
    return sub_46d58601
}

function sub_48a23d6b(?) payable {
    return sub_48a23d6b
}

function lastRebase() payable {
    return lastRebase
}

function sub_7bf42165(?) payable {
    return sub_7bf42165
}

function TOKEN() payable {
    return TOKENAddress
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return _owner
}

function lastExchangeRate() payable {
    return lastExchangeRate
}

function sub_9fee3926(?) payable {
    return sub_9fee3926Address
}

function WETH() payable {
    return WETHAddress
}

function _owner() payable {
    return _owner
}

function sub_ec74b248(?) payable {
    return sub_ec74b248Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function sub_6bee47ef(?) payable {
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9fee3926Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9fee3926Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            require ext_code.size(WETHAddress)
            staticcall WETHAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_ec74b248Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(TOKENAddress)
            staticcall TOKENAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_ec74b248Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if ext_call.return_data[0] * 10^(sub_46d58601 - tokenDecimals + sub_17f76316) / ext_call.return_data[0] != 10^(sub_46d58601 - tokenDecimals + sub_17f76316):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] * 10^(sub_46d58601 - tokenDecimals + sub_17f76316) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 10^(sub_46d58601 - tokenDecimals + sub_17f76316):
                    return (0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * 10^(sub_46d58601 - tokenDecimals + sub_17f76316))
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * 10^(sub_46d58601 - sub_7bf42165 + sub_48a23d6b) / ext_call.return_data[0] != 10^(sub_46d58601 - sub_7bf42165 + sub_48a23d6b):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                require ext_code.size(WETHAddress)
                staticcall WETHAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_ec74b248Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TOKENAddress)
                staticcall TOKENAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_ec74b248Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] * 10^(sub_46d58601 - tokenDecimals + sub_17f76316) / ext_call.return_data[0] != 10^(sub_46d58601 - tokenDecimals + sub_17f76316):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] * 10^(sub_46d58601 - tokenDecimals + sub_17f76316) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 10^(sub_46d58601 - tokenDecimals + sub_17f76316):
                        return (ext_call.return_data[0] * 10^(sub_46d58601 - sub_7bf42165 + sub_48a23d6b) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * 10^(sub_46d58601 - tokenDecimals + sub_17f76316))
    revert
}



}
