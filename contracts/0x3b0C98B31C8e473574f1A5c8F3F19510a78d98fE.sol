contract main {




// =====================  Runtime code  =====================


#
#  - sub_1355749d(?)
#  - sub_1d7d674a(?)
#  - sub_420e8dbb(?)
#  - sub_59c0b3f1(?)
#  - sub_6f5d545f(?)
#  - valueOfAsset(address arg1, uint256 arg2)
#  - tvlOfPool(uint256 arg1)
#
address stor0;
address wethAddress;
address usdcAddress;
address masterAddress;
address stor4;
address rewardAddress;
mapping of address sub_8b16cf98;

function reward() payable {
    return rewardAddress
}

function usdc() payable {
    return usdcAddress
}

function weth() payable {
    return wethAddress
}

function sub_8b16cf98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8b16cf98[arg1]
}

function master() payable {
    return masterAddress
}

function _fallback() payable {
    revert
}

function setPairAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8b16cf98[address(arg1)] = arg2
}

function ethPriceInUSD() payable {
    require ext_code.size(stor4)
    staticcall stor4.0xe6a43905 with:
            gas gas_remaining wei
           args usdcAddress, wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wethAddress)
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(wethAddress)
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_775c6007(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(masterAddress)
    staticcall masterAddress.0x78e97925 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterAddress)
    staticcall masterAddress.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(masterAddress)
    staticcall masterAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterAddress)
    staticcall masterAddress.0x4f19340f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > block.timestamp:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if ext_call.return_data[0] / ext_call.return_data[0] != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if 8760 * 24 * 3600 * ext_call.return_data[0] / ext_call.return_data[0] != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 8760 * 24 * 3600 * ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return (0 / ext_call.return_data[0])
                else:
                    if 8760 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / 8760 * 24 * 3600 * ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return (8760 * 24 * 3600 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}



}
