contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
uint256 devFeePercentage;
uint256 minDevFeeInWei;
uint256 maxRewardQualifyBal;
uint256 minRewardQualifyBal;
uint256 minRewardQualifyPercentage;
uint256 presaleGrantAmount;
address incubatorMsigAddress;
array of address presale;
array of address presaleGrant;
uint256 sub_2ee63836;
uint256 minStakeTime;
uint256 minUnstakeTime;
uint256 minClaimTime;
array of struct stor15;
address pancakeSwapRouterAddress;
address pancakeSwapFactoryAddress;
address sub_527beca5Address;
address sub_a5d1dae6Address;

function getDevFeePercentage() payable {
    return devFeePercentage
}

function getMinDevFeeInWei() payable {
    return minDevFeeInWei
}

function sub_2ee63836(?) payable {
    return sub_2ee63836
}

function getPresaleGrantAmount() payable {
    return presaleGrantAmount
}

function getMinUnstakeTime() payable {
    return minUnstakeTime
}

function getPancakeSwapFactory() payable {
    return pancakeSwapFactoryAddress
}

function sub_527beca5(?) payable {
    return sub_527beca5Address
}

function getMaxRewardQualifyBal() payable {
    return maxRewardQualifyBal
}

function getIncubatorMsigAddress() payable {
    return incubatorMsigAddress
}

function getPresaleGrantsCount() payable {
    return presaleGrant.length
}

function getMinClaimTime() payable {
    return minClaimTime
}

function getMinStakeTime() payable {
    return minStakeTime
}

function owner() payable {
    return owner
}

function getPancakeSwapRouter() payable {
    return pancakeSwapRouterAddress
}

function getPresaleAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < presale.length
    return presale[arg1]
}

function sub_a5d1dae6(?) payable {
    return sub_a5d1dae6Address
}

function getMinRewardQualifyBal() payable {
    return minRewardQualifyBal
}

function getMinRewardQualifyPercentage() payable {
    return minRewardQualifyPercentage
}

function getPresalesCount() payable {
    return presale.length
}

function pendingOwner() payable {
    return pendingOwner
}

function getPresaleGrantAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < presaleGrant.length
    return presaleGrant[arg1]
}

function _fallback() payable {
    revert
}

function sub_63b21d5c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    sub_2ee63836 = arg1
}

function setMinClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    minClaimTime = arg1
}

function setMinStakeTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    minStakeTime = arg1
}

function setMinDevFeeInWei(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    minDevFeeInWei = arg1
}

function setMinUnstakeTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    minUnstakeTime = arg1
}

function setDevFeePercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    devFeePercentage = arg1
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    owner = pendingOwner
    pendingOwner = 0
    emit LogOwnerShipTransferred(owner, pendingOwner);
}

function sub_56bedb47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    sub_a5d1dae6Address = address(arg1)
}

function sub_e49408ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    sub_527beca5Address = address(arg1)
}

function setMaxRewardQualifyBal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    maxRewardQualifyBal = arg1
}

function setMinRewardQualifyBal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    minRewardQualifyBal = arg1
}

function setIncubatorMsigAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    incubatorMsigAddress = arg1
}

function setPancakeSwapRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    pancakeSwapRouterAddress = arg1
}

function setPancakeSwapFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    pancakeSwapFactoryAddress = arg1
}

function setMinRewardQualifyPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    minRewardQualifyPercentage = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    pendingOwner = arg1
    emit LogOwnerShipTransferInitiated(owner, arg1);
}

function addPresaleAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_a5d1dae6Address == msg.sender
    presale.length++
    presale[presale.length] = arg1
    return (presale.length - 1)
}

function setPresaleGrantAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if arg1 > 5000 * 10^18:
        revert with 0, 'Invalid presale grant amount'
    presaleGrantAmount = arg1
}

function addPresaleGrantAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_a5d1dae6Address == msg.sender
    presaleGrant.length++
    presaleGrant[presaleGrant.length] = arg1
    return (presaleGrant.length - 1)
}

function sub_009983e9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == owner
    stor15.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor15.length > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        idx = cd[4] + (32 * ('cd', 4).length) + 36
        while sha3(15) + stor15.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}

function sub_989970dd(?) payable {
    mem[64] = (32 * stor15.length) + 128
    mem[96] = stor15.length
    if not stor15.length:
        mem[(32 * stor15.length) + 128] = 32
        mem[(32 * stor15.length) + 160] = stor15.length
        idx = 0
        s = 128
        t = (32 * stor15.length) + 192
        while idx < stor15.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor15.length) + 128
           len (96 * stor15.length) + 64
    mem[128] = address(stor15.field_0)
    idx = 128
    s = 0
    while (32 * stor15.length) + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor15.length) + 128] = 32
    mem[(32 * stor15.length) + 160] = stor15.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor15.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor15.length) + -mem[64] + 192
}

function getLockedBalance(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < stor15.length:
        mem[0] = 15
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor15[idx].field_0)
        staticcall stor15[idx].field_0.0x96b98862 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _50 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _51 = mem[_50]
        require mem[_50] == mem[_50]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor15[idx].field_0)
        staticcall stor15[idx].field_0.0xc884ef83 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _54 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _55 = mem[_54]
        require mem[_54] == mem[_54]
        if _51 <= 0:
            idx = idx + 1
            s = s
            continue 
        if mem[_54] >= 4:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(stor15[idx].field_0)
        staticcall stor15[idx].field_0.0x2f8de810 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _59 = mem[_58]
        require mem[_58] == mem[_58]
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60] = 26
        mem[_60 + 32] = 'SafeMath: division by zero'
        if not Mask(254, 2, _51):
            _62 = mem[64]
            mem[64] = mem[64] + 64
            mem[_62] = 26
            mem[_62 + 32] = 'SafeMath: division by zero'
            if _59 > 0:
                require _59
                if s + (0 / _59) < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + (0 / _59)
                continue 
            _66 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_66 + idx + 68] = mem[_62 + idx + 32]
                idx = idx + 32
                continue 
            mem[_66 + 94] = 0
            revert with memory
              from mem[64]
               len _66 + -mem[64] + 100
        require _51 / 4
        if Mask(254, 2, _51) - (_55 * _51 / 4) / _51 / 4 != -_55 + 4:
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(254, 2, _51) - (_55 * _51 / 4):
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 26
            mem[_65 + 32] = 'SafeMath: division by zero'
            if _59 > 0:
                require _59
                if s + (0 / _59) < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + (0 / _59)
                continue 
            _68 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_68 + idx + 68] = mem[_65 + idx + 32]
                idx = idx + 32
                continue 
            mem[_68 + 94] = 0
            revert with memory
              from mem[64]
               len _68 + -mem[64] + 100
        require Mask(254, 2, _51) - (_55 * _51 / 4)
        if (10^18 * Mask(254, 2, _51)) - (10^18 * _55 * _51 / 4) / Mask(254, 2, _51) - (_55 * _51 / 4) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _67 = mem[64]
        mem[64] = mem[64] + 64
        mem[_67] = 26
        mem[_67 + 32] = 'SafeMath: division by zero'
        if _59 > 0:
            require _59
            if s + ((10^18 * Mask(254, 2, _51)) - (10^18 * _55 * _51 / 4) / _59) < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + ((10^18 * Mask(254, 2, _51)) - (10^18 * _55 * _51 / 4) / _59)
            continue 
        _70 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_70 + idx + 68] = mem[_67 + idx + 32]
            idx = idx + 32
            continue 
        mem[_70 + 94] = 0
        revert with memory
          from mem[64]
           len _70 + -mem[64] + 100
    return s
}



}
