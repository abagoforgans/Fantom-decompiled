contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
address sub_a735adb0Address;
address devaddr;
uint256 sub_20b7c628;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint16 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_20b7c628(?) payable {
    return sub_20b7c628
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_a735adb0(?) payable {
    return sub_a735adb0Address
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 and 1 > -1 / arg2 - arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and sub_20b7c628 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * sub_20b7c628) - (poolInfo[arg1].field_512 * sub_20b7c628) and poolInfo[arg1].field_256 > -1 / (block.number * sub_20b7c628) - (poolInfo[arg1].field_512 * sub_20b7c628):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(sub_a735adb0Address)
                call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_a735adb0Address)
                call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_68d6f529(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if block.number - poolInfo[arg1].field_512 and sub_20b7c628 > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.number * sub_20b7c628) - (poolInfo[arg1].field_512 * sub_20b7c628) and poolInfo[arg1].field_256 > -1 / (block.number * sub_20b7c628) - (poolInfo[arg1].field_512 * sub_20b7c628):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_20b7c628 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_20b7c628 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14 = mem[_13]
            if mem[_13]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and sub_20b7c628 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * sub_20b7c628) - (poolInfo[idx].field_512 * sub_20b7c628) and poolInfo[idx].field_256 > -1 / (block.number * sub_20b7c628) - (poolInfo[idx].field_512 * sub_20b7c628):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(sub_a735adb0Address)
                    call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sub_a735adb0Address)
                    call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not _14:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / _14):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / _14
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16 = mem[_15]
            if mem[_15]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and sub_20b7c628 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * sub_20b7c628) - (poolInfo[idx].field_512 * sub_20b7c628) and poolInfo[idx].field_256 > -1 / (block.number * sub_20b7c628) - (poolInfo[idx].field_512 * sub_20b7c628):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(sub_a735adb0Address)
                    call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sub_a735adb0Address)
                    call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not _16:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / _16):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / _16
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_20b7c628 = arg1
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _41 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _54 = mem[_41]
                if mem[_41]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and sub_20b7c628 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * sub_20b7c628) - (poolInfo[idx].field_512 * sub_20b7c628) and poolInfo[idx].field_256 > -1 / (block.number * sub_20b7c628) - (poolInfo[idx].field_512 * sub_20b7c628):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(sub_a735adb0Address)
                        call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sub_a735adb0Address)
                        call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _54:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / _54):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / _54
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    if block.number > startBlock:
        stor36B6[stor5.length] = block.number
    else:
        stor36B6[stor5.length] = startBlock
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = arg3
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25 = mem[_24]
                if mem[_24]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and sub_20b7c628 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * sub_20b7c628) - (poolInfo[idx].field_512 * sub_20b7c628) and poolInfo[idx].field_256 > -1 / (block.number * sub_20b7c628) - (poolInfo[idx].field_512 * sub_20b7c628):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(sub_a735adb0Address)
                        call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(sub_a735adb0Address)
                        call sub_a735adb0Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _25:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / _25):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_20b7c628 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_20b7c628 * poolInfo[idx].field_256) / totalAllocPoint / _25
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}



}
