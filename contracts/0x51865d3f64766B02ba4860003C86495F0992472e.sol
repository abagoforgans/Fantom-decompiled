contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2, address arg3)
#  - harvest(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3)
#
address owner;
address pendingOwner;
address MASTER_CHEFAddress;
address sub_b3a4e0c1Address;
uint256 MASTER_PID;
array of struct poolInfo;
array of address lpToken;
array of address rewarder;
array of address strategies;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 sub_4b509a80;
uint256 sub_9c6b4424;
address feeAddress;
address liquidDepositorAddress;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() {
    return totalAllocPoint
}

function feeAddress() {
    return feeAddress
}

function sub_4b509a80(?) {
    return sub_4b509a80
}

function MASTER_PID() {
    return MASTER_PID
}

function lpToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < lpToken.length
    return lpToken[arg1]
}

function liquidDepositor() {
    return liquidDepositorAddress
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9c6b4424(?) {
    return sub_9c6b4424
}

function sub_b3a4e0c1(?) {
    return sub_b3a4e0c1Address
}

function rewarder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rewarder.length
    return rewarder[arg1]
}

function strategies(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < strategies.length
    return strategies[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function MASTER_CHEF() {
    return MASTER_CHEFAddress
}

function _fallback() payable {
    revert
}

function claimOwnership() {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable: caller != pending owner'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
}

function sub_672f1490(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MASTER_CHEFAddress = address(arg1)
    MASTER_PID = arg2
}

function harvestFromMasterChef() {
    require ext_code.size(MASTER_CHEFAddress)
    call MASTER_CHEFAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args MASTER_PID, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1, bool arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        pendingOwner = arg1
    else:
        if not arg1:
            if not arg3:
                revert with 0, 'Ownable: zero address'
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
        pendingOwner = 0
}

function massHarvestFromStrategies() {
    idx = 0
    while idx < strategies.length:
        mem[0] = 8
        if strategies[idx]:
            require idx < strategies.length
            mem[0] = 8
            mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(strategies[idx])
            call strategies[idx].0x4641257d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function permitToken(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg6 == arg6
    require ext_code.size(arg1)
    call arg1.permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(arg3), arg4, arg5, arg6 << 248, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function add(uint256 arg1, address arg2, address arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    lpToken.length++
    lpToken[lpToken.length] = arg2
    rewarder.length++
    rewarder[rewarder.length] = arg3
    strategies.length++
    strategies[strategies.length] = arg4
    poolInfo.length++
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = block.number
    stor36B6[stor5.length] = arg1
    stor36B6[stor5.length] = arg5
    if 1 > lpToken.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit LogPoolAddition(arg1, lpToken.length - 1, arg2, arg3);
}

function set(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg3 == arg3
    require arg4 == arg4
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_512 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_512
    require arg1 < poolInfo.length
    poolInfo[arg1].field_512 = arg2
    poolInfo[arg1].field_768 = arg5
    require arg1 < rewarder.length
    if not arg6:
        emit LogSetPool(arg2, arg6, arg1, rewarder[arg1]);
    else:
        rewarder[arg1] = arg3
        require arg1 < strategies.length
        strategies[arg1] = arg4
        if arg6:
            emit LogSetPool(arg2, arg6, arg1, arg3);
        else:
            require arg1 < rewarder.length
            emit LogSetPool(arg2, arg6, arg1, rewarder[arg1]);
}

function sub_11ca2d51(?) {
    require ext_code.size(MASTER_CHEFAddress)
    staticcall MASTER_CHEFAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MASTER_CHEFAddress)
    staticcall MASTER_CHEFAddress.0x1526fe27 with:
            gas gas_remaining wei
           args MASTER_PID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((2 * ceil32(return_data.size)) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not sub_4b509a80:
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[32] * sub_4b509a80 / sub_4b509a80 != ext_call.return_data[32]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0]:
            return (ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function init(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'MasterChefV2: Balance must exceed 0'
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], mem[ceil32(return_data.size) + 228 len 28]
    call arg1.mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'BoringERC20: TransferFrom failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'BoringERC20: TransferFrom failed'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'BoringERC20: TransferFrom failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'BoringERC20: TransferFrom failed'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args MASTER_CHEFAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(MASTER_CHEFAddress)
    call MASTER_CHEFAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args MASTER_PID, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogInit()
}

function emergencyWithdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    require arg1 < rewarder.length
    if rewarder[arg1]:
        mem[196] = 0
        mem[228] = 0
        require ext_code.size(rewarder[arg1])
        call rewarder[arg1].0xc214ef8c with:
             gas gas_remaining wei
            args 0, uint32(arg1), msg.sender, address(arg2), 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 < lpToken.length
        require ext_code.size(lpToken[arg1])
        staticcall lpToken[arg1].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 < strategies.length
        if userInfo[arg1][msg.sender].field_0 <= ext_call.return_data[0]:
            require arg1 < lpToken.length
            mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, userInfo[arg1][msg.sender].field_0, mem[ceil32(return_data.size) + 196 len 28]
            call lpToken[arg1].mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'BoringERC20: Transfer failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, msg.sender) >> 32 == bool(0, Mask(224, 32, msg.sender) >> 32)
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'BoringERC20: Transfer failed'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'BoringERC20: Transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'BoringERC20: Transfer failed'
            emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1, arg2);
        else:
            if ext_call.return_data[0] > userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(strategies[arg1])
            call strategies[arg1].0x2e1a7d4d with:
                 gas gas_remaining wei
                args (userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < lpToken.length
            mem[(2 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, 2 * ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 196 len 28]
            call lpToken[arg1].mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'BoringERC20: Transfer failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, msg.sender) >> 32 == bool(0, Mask(224, 32, msg.sender) >> 32)
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'BoringERC20: Transfer failed'
            else:
                mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'BoringERC20: Transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                    if not mem[(2 * ceil32(return_data.size)) + 228]:
                        revert with 0, 'BoringERC20: Transfer failed'
            emit EmergencyWithdraw((2 * ext_call.return_data[0]), msg.sender, arg1, arg2);
    else:
        require arg1 < lpToken.length
        mem[100] = this.address
        require ext_code.size(lpToken[arg1])
        staticcall lpToken[arg1].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 < strategies.length
        if userInfo[arg1][msg.sender].field_0 <= ext_call.return_data[0]:
            require arg1 < lpToken.length
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, userInfo[arg1][msg.sender].field_0, mem[ceil32(return_data.size) + 196 len 28]
            call lpToken[arg1].mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'BoringERC20: Transfer failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'BoringERC20: Transfer failed'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'BoringERC20: Transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'BoringERC20: Transfer failed'
            emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1, arg2);
        else:
            if ext_call.return_data[0] > userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 100] = userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0]
            require ext_code.size(strategies[arg1])
            call strategies[arg1].0x2e1a7d4d with:
                 gas gas_remaining wei
                args (userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < lpToken.length
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, 2 * ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 196 len 28]
            call lpToken[arg1].mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'BoringERC20: Transfer failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'BoringERC20: Transfer failed'
            else:
                mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'BoringERC20: Transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                    if not mem[(2 * ceil32(return_data.size)) + 228]:
                        revert with 0, 'BoringERC20: Transfer failed'
            emit EmergencyWithdraw((2 * ext_call.return_data[0]), msg.sender, arg1, arg2);
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_256:
        return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
    require arg1 < strategies.length
    require ext_code.size(strategies[arg1])
    staticcall strategies[arg1].0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < lpToken.length
    require ext_code.size(lpToken[arg1])
    staticcall lpToken[arg1].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        require arg1 < poolInfo.length
        poolInfo[arg1].field_256 = block.number
        emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], poolInfo[arg1].field_0, arg1);
        return poolInfo[arg1].field_0, block.number, poolInfo[arg1].field_512, poolInfo[arg1].field_768
    if poolInfo[arg1].field_256 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(MASTER_CHEFAddress)
    staticcall MASTER_CHEFAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MASTER_CHEFAddress)
    staticcall MASTER_CHEFAddress.0x1526fe27 with:
            gas gas_remaining wei
           args MASTER_PID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((6 * ceil32(return_data.size)) + 480 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not sub_4b509a80:
        require ext_call.return_data[0]
        if not block.number - poolInfo[arg1].field_256:
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                require 2 * ext_call.return_data[0]
                if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < poolInfo.length
                poolInfo[arg1].field_0 += 0 / 2 * ext_call.return_data[0]
                poolInfo[arg1].field_256 = block.number
                emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                return (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                       block.number,
                       poolInfo[arg1].field_512,
                       poolInfo[arg1].field_768
            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require 2 * ext_call.return_data[0]
            if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]) / block.number - poolInfo[arg1].field_256 != 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]):
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                require 2 * ext_call.return_data[0]
                if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < poolInfo.length
                poolInfo[arg1].field_0 += 0 / 2 * ext_call.return_data[0]
                poolInfo[arg1].field_256 = block.number
                emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                return (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                       block.number,
                       poolInfo[arg1].field_512,
                       poolInfo[arg1].field_768
            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require 2 * ext_call.return_data[0]
            if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]) != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        require totalAllocPoint
        if not (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint:
            require 2 * ext_call.return_data[0]
            if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += 0 / 2 * ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint != sub_9c6b4424:
            revert with 0, 'SafeMath: multiplication overflow'
        require 2 * ext_call.return_data[0]
        if (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < poolInfo.length
        poolInfo[arg1].field_0 += sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]
        poolInfo[arg1].field_256 = block.number
        emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
        return (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
               block.number,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768
    if ext_call.return_data[32] * sub_4b509a80 / sub_4b509a80 != ext_call.return_data[32]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_call.return_data[0]
    if not block.number - poolInfo[arg1].field_256:
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            require 2 * ext_call.return_data[0]
            if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += 0 / 2 * ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
            revert with 0, 'SafeMath: multiplication overflow'
        require 2 * ext_call.return_data[0]
        if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < poolInfo.length
        poolInfo[arg1].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]
        poolInfo[arg1].field_256 = block.number
        emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
        return (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
               block.number,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768
    if (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) / block.number - poolInfo[arg1].field_256 != ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]):
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            require 2 * ext_call.return_data[0]
            if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += 0 / 2 * ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
            revert with 0, 'SafeMath: multiplication overflow'
        require 2 * ext_call.return_data[0]
        if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < poolInfo.length
        poolInfo[arg1].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]
        poolInfo[arg1].field_256 = block.number
        emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
        return (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
               block.number,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768
    if (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) != poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: multiplication overflow'
    require totalAllocPoint
    if not (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint:
        require 2 * ext_call.return_data[0]
        if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < poolInfo.length
        poolInfo[arg1].field_0 += 0 / 2 * ext_call.return_data[0]
        poolInfo[arg1].field_256 = block.number
        emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
        return (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
               block.number,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768
    if sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint != sub_9c6b4424:
        revert with 0, 'SafeMath: multiplication overflow'
    require 2 * ext_call.return_data[0]
    if (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_0 += sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]
    poolInfo[arg1].field_256 = block.number
    emit LogUpdatePool(block.number, 2 * ext_call.return_data[0], (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
    return (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0, 
           block.number,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768
}

function massUpdatePools(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        _209 = mem[64]
        mem[64] = mem[64] + 128
        mem[_209] = 0
        mem[_209 + 32] = 0
        mem[_209 + 64] = 0
        mem[_209 + 96] = 0
        require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
        mem[0] = 5
        _211 = mem[64]
        mem[64] = mem[64] + 128
        mem[_211] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_211 + 32] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_211 + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[_211 + 96] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768
        if block.number > poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
            require cd[((32 * idx) + arg1 + 36)] < strategies.length
            mem[0] = 8
            require ext_code.size(strategies[cd[((32 * idx) + arg1 + 36)]])
            staticcall strategies[cd[((32 * idx) + arg1 + 36)]].0x722713f7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _217 = mem[_216]
            require cd[((32 * idx) + arg1 + 36)] < lpToken.length
            mem[0] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[cd[((32 * idx) + arg1 + 36)]])
            staticcall lpToken[cd[((32 * idx) + arg1 + 36)]].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _222 = mem[_221]
            if _217 + mem[_221] < mem[_221]:
                revert with 0, 'SafeMath: addition overflow'
            if not _217 + mem[_221]:
                mem[_211 + 32] = block.number
                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                mem[0] = 5
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                mem[mem[64]] = block.number
                mem[mem[64] + 32] = _217 + _222
                mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                emit LogUpdatePool(block.number, _217 + _222, poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
            else:
                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(MASTER_CHEFAddress)
                staticcall MASTER_CHEFAddress.0x17caf6f1 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _241 = mem[_240]
                require ext_code.size(MASTER_CHEFAddress)
                staticcall MASTER_CHEFAddress.0x1526fe27 with:
                        gas gas_remaining wei
                       args MASTER_PID
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _245 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require mem[_244] == mem[_244 + 12 len 20]
                mem[_245] = mem[_244]
                mem[_245 + 32] = mem[_244 + 32]
                mem[_245 + 64] = mem[_244 + 64]
                mem[_245 + 96] = mem[_244 + 96]
                if not sub_4b509a80:
                    require _241
                    if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require _217 + _222
                            if (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_211] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                            mem[_211 + 32] = block.number
                            require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                            mem[0] = 5
                            poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _217 + _222
                            poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                            mem[mem[64]] = block.number
                            mem[mem[64] + 32] = _217 + _222
                            mem[mem[64] + 64] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                            emit LogUpdatePool(block.number, _217 + _222, (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require _217 + _222
                            if (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_211] = (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                            mem[_211 + 32] = block.number
                            require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                            mem[0] = 5
                            poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222
                            poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                            mem[mem[64]] = block.number
                            mem[mem[64] + 32] = _217 + _222
                            mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                            emit LogUpdatePool(block.number, _217 + _222, (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                    else:
                        if (block.number * 0 / _241) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241) / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 != 0 / _241:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * 0 / _241) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241):
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require _217 + _222
                                if (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_211] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_211 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _217 + _222
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _217 + _222
                                mem[mem[64] + 64] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _217 + _222, (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require _217 + _222
                                if (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_211] = (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_211 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _217 + _222
                                mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _217 + _222, (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            if (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / (block.number * 0 / _241) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241) != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require totalAllocPoint
                            if not (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint:
                                require _217 + _222
                                if (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_211] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_211 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _217 + _222
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _217 + _222
                                mem[mem[64] + 64] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _217 + _222, (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if sub_9c6b4424 * (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint != sub_9c6b4424:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require _217 + _222
                                if (sub_9c6b4424 * (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_211] = (sub_9c6b4424 * (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_211 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _217 + _222
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _217 + _222
                                mem[mem[64] + 64] = (sub_9c6b4424 * (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _217 + _222, (sub_9c6b4424 * (block.number * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                else:
                    if mem[_245 + 32] * sub_4b509a80 / sub_4b509a80 != mem[_245 + 32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require _241
                    if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require _217 + _222
                            if (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_211] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                            mem[_211 + 32] = block.number
                            require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                            mem[0] = 5
                            poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _217 + _222
                            poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                            mem[mem[64]] = block.number
                            mem[mem[64] + 32] = _217 + _222
                            mem[mem[64] + 64] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                            emit LogUpdatePool(block.number, _217 + _222, (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require _217 + _222
                            if (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_211] = (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                            mem[_211 + 32] = block.number
                            require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                            mem[0] = 5
                            poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222
                            poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                            mem[mem[64]] = block.number
                            mem[mem[64] + 32] = _217 + _222
                            mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                            emit LogUpdatePool(block.number, _217 + _222, (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                    else:
                        if (block.number * mem[_245 + 32] * sub_4b509a80 / _241) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241) / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 != mem[_245 + 32] * sub_4b509a80 / _241:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * mem[_245 + 32] * sub_4b509a80 / _241) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241):
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require _217 + _222
                                if (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_211] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_211 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _217 + _222
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _217 + _222
                                mem[mem[64] + 64] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _217 + _222, (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require _217 + _222
                                if (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_211] = (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_211 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _217 + _222
                                mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _217 + _222, (sub_9c6b4424 * 0 / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            if (block.number * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / (block.number * mem[_245 + 32] * sub_4b509a80 / _241) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241) != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require totalAllocPoint
                            if not (block.number * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint:
                                require _217 + _222
                                if (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_211] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_211 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _217 + _222
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _217 + _222
                                mem[mem[64] + 64] = (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _217 + _222, (0 / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if sub_9c6b4424 * (block.number * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / (block.number * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint != sub_9c6b4424:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require _217 + _222
                                if (sub_9c6b4424 * (block.number * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_211] = (sub_9c6b4424 * (block.number * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_245 + 32] * sub_4b509a80 / _241 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _217 + _222) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_211 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = mem[_211]
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                _411 = mem[_211]
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _217 + _222
                                mem[mem[64] + 64] = _411
                                emit LogUpdatePool(block.number, _217 + _222, _411, cd[((32 * idx) + arg1 + 36)]);
        idx = idx + 1
        continue 
}

function sub_31411d43(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require arg1 < poolInfo.length
    require arg1 < strategies.length
    require ext_code.size(strategies[arg1])
    staticcall strategies[arg1].0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < lpToken.length
    require ext_code.size(lpToken[arg1])
    staticcall lpToken[arg1].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= poolInfo[arg1].field_256:
        if not userInfo[arg1][address(arg2)].field_0:
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        require sub_9c6b4424
        if userInfo[arg1][address(arg2)].field_256 < 0:
            if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
        else:
            if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424:
                if userInfo[arg1][address(arg2)].field_256 >= 0:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
                if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
        if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
            revert with 0, 'Integer < 0'
        return ((poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
    if not uint255(ext_call.return_data[0]):
        if not userInfo[arg1][address(arg2)].field_0:
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        require sub_9c6b4424
        if userInfo[arg1][address(arg2)].field_256 < 0:
            if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
        else:
            if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424:
                if userInfo[arg1][address(arg2)].field_256 >= 0:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
                if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
        if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
            revert with 0, 'Integer < 0'
        return ((poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_256 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(MASTER_CHEFAddress)
    staticcall MASTER_CHEFAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MASTER_CHEFAddress)
    staticcall MASTER_CHEFAddress.0x1526fe27 with:
            gas gas_remaining wei
           args MASTER_PID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((6 * ceil32(return_data.size)) + 480 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not sub_4b509a80:
        require ext_call.return_data[0]
        if not block.number - poolInfo[arg1].field_256:
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                require 2 * ext_call.return_data[0]
                if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    require sub_9c6b4424
                    if userInfo[arg1][address(arg2)].field_256 < 0:
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                    else:
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                            if userInfo[arg1][address(arg2)].field_256 >= 0:
                                revert with 0, 'SignedSafeMath: subtraction overflow'
                            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                                revert with 0, 'SignedSafeMath: subtraction overflow'
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                        revert with 0, 'Integer < 0'
                    return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
                if (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return (((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require 2 * ext_call.return_data[0]
            if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]) / block.number - poolInfo[arg1].field_256 != 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]):
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                require 2 * ext_call.return_data[0]
                if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    require sub_9c6b4424
                    if userInfo[arg1][address(arg2)].field_256 < 0:
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                    else:
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                            if userInfo[arg1][address(arg2)].field_256 >= 0:
                                revert with 0, 'SignedSafeMath: subtraction overflow'
                            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                                revert with 0, 'SignedSafeMath: subtraction overflow'
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                        revert with 0, 'Integer < 0'
                    return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
                if (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return (((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require 2 * ext_call.return_data[0]
            if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]) != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        require totalAllocPoint
        if not (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint:
            require 2 * ext_call.return_data[0]
            if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint != sub_9c6b4424:
            revert with 0, 'SafeMath: multiplication overflow'
        require 2 * ext_call.return_data[0]
        if (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        require sub_9c6b4424
        if userInfo[arg1][address(arg2)].field_256 < 0:
            if ((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
        else:
            if ((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                if userInfo[arg1][address(arg2)].field_256 >= 0:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
        if ((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
            revert with 0, 'Integer < 0'
        return (((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
    if ext_call.return_data[32] * sub_4b509a80 / sub_4b509a80 != ext_call.return_data[32]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_call.return_data[0]
    if not block.number - poolInfo[arg1].field_256:
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            require 2 * ext_call.return_data[0]
            if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
            revert with 0, 'SafeMath: multiplication overflow'
        require 2 * ext_call.return_data[0]
        if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        require sub_9c6b4424
        if userInfo[arg1][address(arg2)].field_256 < 0:
            if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
        else:
            if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                if userInfo[arg1][address(arg2)].field_256 >= 0:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
        if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
            revert with 0, 'Integer < 0'
        return (((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) / block.number - poolInfo[arg1].field_256 != ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]):
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            require 2 * ext_call.return_data[0]
            if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
            revert with 0, 'SafeMath: multiplication overflow'
        require 2 * ext_call.return_data[0]
        if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        require sub_9c6b4424
        if userInfo[arg1][address(arg2)].field_256 < 0:
            if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
        else:
            if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                if userInfo[arg1][address(arg2)].field_256 >= 0:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
        if ((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
            revert with 0, 'Integer < 0'
        return (((sub_9c6b4424 * 0 / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) != poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: multiplication overflow'
    require totalAllocPoint
    if not (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint:
        require 2 * ext_call.return_data[0]
        if (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        require sub_9c6b4424
        if userInfo[arg1][address(arg2)].field_256 < 0:
            if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
        else:
            if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                if userInfo[arg1][address(arg2)].field_256 >= 0:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
        if ((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
            revert with 0, 'Integer < 0'
        return (((0 / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
    if sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint != sub_9c6b4424:
        revert with 0, 'SafeMath: multiplication overflow'
    require 2 * ext_call.return_data[0]
    if (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        require sub_9c6b4424
        if userInfo[arg1][address(arg2)].field_256 < 0:
            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
        else:
            if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > 0 / sub_9c6b4424:
                if userInfo[arg1][address(arg2)].field_256 >= 0:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
                if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= 0 / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
        if (0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
            revert with 0, 'Integer < 0'
        return ((0 / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
    if (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0]) + poolInfo[arg1].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    require sub_9c6b4424
    if userInfo[arg1][address(arg2)].field_256 < 0:
        if ((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
            revert with 0, 'SignedSafeMath: subtraction overflow'
    else:
        if ((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
            if userInfo[arg1][address(arg2)].field_256 >= 0:
                revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
    if ((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
        revert with 0, 'Integer < 0'
    return (((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / 2 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
}

function batch(bytes[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[64] = (64 * arg1.length) + 160
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                _508 = mem[64]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _508 + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if mem[96] < 68:
                            _543 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_543] = 29
                            mem[_543 + 32] = 'Transaction reverted silently'
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _573 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _573 + 68] = mem[idx + _543 + 32]
                                idx = idx + 32
                                continue 
                            mem[_573 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _573 + -mem[64] + 100
                        _542 = mem[100]
                        require mem[100] >= 32
                        _562 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _596 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _636 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_636] = mem[mem[132] + 132]
                        require _562 + _596 + 164 <= _542 + 132
                        s = 0
                        while s < _596:
                            mem[s + _636 + 32] = mem[s + _562 + 164]
                            s = s + 32
                            continue 
                        if ceil32(_596) <= _596:
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1037 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1088 = mem[_636]
                            mem[mem[64] + 36] = mem[_636]
                            idx = 0
                            while idx < _1088:
                                mem[idx + _1037 + 68] = mem[idx + _636 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1088) > _1088:
                                mem[_1088 + _1037 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1088) + _1037 + -mem[64] + 68
                        mem[_596 + _636 + 32] = 0
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1089 = mem[_636]
                        mem[mem[64] + 36] = mem[_636]
                        idx = 0
                        while idx < _1089:
                            mem[idx + _1039 + 68] = mem[idx + _636 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1089) > _1089:
                            mem[_1089 + _1039 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1089) + _1039 + -mem[64] + 68
                    if mem[96] < 68:
                        _555 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_555] = 29
                        mem[_555 + 32] = 'Transaction reverted silently'
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _599 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _599 + 68] = mem[idx + _555 + 32]
                            idx = idx + 32
                            continue 
                        mem[_599 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _599 + -mem[64] + 100
                    _554 = mem[100]
                    require mem[100] >= 32
                    _574 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _621 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _656 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_656] = mem[mem[132] + 132]
                    require _574 + _621 + 164 <= _554 + 132
                    s = 0
                    while s < _621:
                        mem[s + _656 + 32] = mem[s + _574 + 164]
                        s = s + 32
                        continue 
                    if ceil32(_621) <= _621:
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1041 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1090 = mem[_656]
                        mem[mem[64] + 36] = mem[_656]
                        idx = 0
                        while idx < _1090:
                            mem[idx + _1041 + 68] = mem[idx + _656 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1090) > _1090:
                            mem[_1090 + _1041 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1090) + _1041 + -mem[64] + 68
                    mem[_621 + _656 + 32] = 0
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                        idx = idx + 1
                        continue 
                    _1043 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1091 = mem[_656]
                    mem[mem[64] + 36] = mem[_656]
                    idx = 0
                    while idx < _1091:
                        mem[idx + _1043 + 68] = mem[idx + _656 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1091) > _1091:
                        mem[_1091 + _1043 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1091) + _1043 + -mem[64] + 68
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_520] = return_data.size
                mem[_520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if return_data.size < 68:
                        _546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_546] = 29
                        mem[_546 + 32] = 'Transaction reverted silently'
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                            idx = idx + 1
                            continue 
                        _576 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _576 + 68] = mem[idx + _546 + 32]
                            idx = idx + 32
                            continue 
                        mem[_576 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _576 + -mem[64] + 100
                    _545 = Mask(224, 0, return_data.size), mem[_520 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_520 + 32 len 4] >= 32
                    _563 = mem[_520 + 36]
                    require mem[_520 + 36] <= test266151307()
                    require _520 + mem[_520 + 36] + 67 < _520 + Mask(224, 0, return_data.size), mem[_520 + 32 len 4] + 36
                    _600 = mem[_520 + mem[_520 + 36] + 36]
                    require mem[_520 + mem[_520 + 36] + 36] <= test266151307()
                    _638 = mem[64]
                    require mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32
                    mem[_638] = _600
                    require _563 + _600 + 68 <= _545 + 36
                    s = 0
                    while s < _600:
                        mem[s + _638 + 32] = mem[s + _520 + _563 + 68]
                        s = s + 32
                        continue 
                    if ceil32(_600) <= _600:
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                            idx = idx + 1
                            continue 
                        _1045 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _600
                        idx = 0
                        while idx < _600:
                            mem[idx + _1045 + 68] = mem[idx + _638 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_600) > _600:
                            mem[_600 + _1045 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_600) + _1045 + -mem[64] + 68
                    mem[_600 + _638 + 32] = 0
                    if delegate.return_code:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                        idx = idx + 1
                        continue 
                    _1047 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _600
                    idx = 0
                    while idx < _600:
                        mem[idx + _1047 + 68] = mem[idx + _638 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_600) > _600:
                        mem[_600 + _1047 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_600) + _1047 + -mem[64] + 68
                if return_data.size < 68:
                    _557 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_557] = 29
                    mem[_557 + 32] = 'Transaction reverted silently'
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                        idx = idx + 1
                        continue 
                    _603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _603 + 68] = mem[idx + _557 + 32]
                        idx = idx + 32
                        continue 
                    mem[_603 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _603 + -mem[64] + 100
                _556 = Mask(224, 0, return_data.size), mem[_520 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_520 + 32 len 4] >= 32
                _577 = mem[_520 + 36]
                require mem[_520 + 36] <= test266151307()
                require _520 + mem[_520 + 36] + 67 < _520 + Mask(224, 0, return_data.size), mem[_520 + 32 len 4] + 36
                _624 = mem[_520 + mem[_520 + 36] + 36]
                require mem[_520 + mem[_520 + 36] + 36] <= test266151307()
                _657 = mem[64]
                require mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32
                mem[_657] = _624
                require _577 + _624 + 68 <= _556 + 36
                s = 0
                while s < _624:
                    mem[s + _657 + 32] = mem[s + _520 + _577 + 68]
                    s = s + 32
                    continue 
                if ceil32(_624) <= _624:
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                        idx = idx + 1
                        continue 
                    _1049 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _624
                    idx = 0
                    while idx < _624:
                        mem[idx + _1049 + 68] = mem[idx + _657 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_624) > _624:
                        mem[_624 + _1049 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_624) + _1049 + -mem[64] + 68
                mem[_624 + _657 + 32] = 0
                if not arg2:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(delegate.return_code)
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                    idx = idx + 1
                    continue 
                _1051 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _624
                idx = 0
                while idx < _624:
                    mem[idx + _1051 + 68] = mem[idx + _657 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_624) > _624:
                    mem[_624 + _1051 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_624) + _1051 + -mem[64] + 68
            _496 = mem[64]
            mem[mem[64]] = 64
            _498 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _498:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_496 + 32] = (32 * _498) + 96
            _988 = mem[(32 * arg1.length) + 128]
            mem[_496 + (32 * _498) + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = _496 + (32 * _498) + (32 * _988) + 128
            u = _496 + (32 * _498) + 128
            while idx < _988:
                mem[u] = t + -_496 + -(32 * _498) - 128
                _1390 = mem[s]
                _1429 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1429:
                    mem[v + t + 32] = mem[v + _1390 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1429) > _1429:
                    mem[_1429 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1429) + t + 32
                u = u + 32
                continue 
        else:
            mem[(32 * arg1.length) + 160] = 96
            s = (32 * arg1.length) + 160
            idx = arg1.length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg1.length:
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                _1078 = mem[64]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _1078 + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if mem[96] < 68:
                            _1139 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1139] = 29
                            mem[_1139 + 32] = 'Transaction reverted silently'
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1195 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _1195 + 68] = mem[idx + _1139 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1195 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _1195 + -mem[64] + 100
                        _1138 = mem[100]
                        require mem[100] >= 32
                        _1190 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1206 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _1234 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_1234] = mem[mem[132] + 132]
                        require _1190 + _1206 + 164 <= _1138 + 132
                        s = 0
                        while s < _1206:
                            mem[s + _1234 + 32] = mem[s + _1190 + 164]
                            s = s + 32
                            continue 
                        if ceil32(_1206) <= _1206:
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1487 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1536 = mem[_1234]
                            mem[mem[64] + 36] = mem[_1234]
                            idx = 0
                            while idx < _1536:
                                mem[idx + _1487 + 68] = mem[idx + _1234 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1536) > _1536:
                                mem[_1536 + _1487 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1536) + _1487 + -mem[64] + 68
                        mem[_1206 + _1234 + 32] = 0
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1489 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1537 = mem[_1234]
                        mem[mem[64] + 36] = mem[_1234]
                        idx = 0
                        while idx < _1537:
                            mem[idx + _1489 + 68] = mem[idx + _1234 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1537) > _1537:
                            mem[_1537 + _1489 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1537) + _1489 + -mem[64] + 68
                    if mem[96] < 68:
                        _1167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1167] = 29
                        mem[_1167 + 32] = 'Transaction reverted silently'
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1209 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _1209 + 68] = mem[idx + _1167 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1209 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _1209 + -mem[64] + 100
                    _1166 = mem[100]
                    require mem[100] >= 32
                    _1196 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _1223 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _1242 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_1242] = mem[mem[132] + 132]
                    require _1196 + _1223 + 164 <= _1166 + 132
                    s = 0
                    while s < _1223:
                        mem[s + _1242 + 32] = mem[s + _1196 + 164]
                        s = s + 32
                        continue 
                    if ceil32(_1223) <= _1223:
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1491 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1538 = mem[_1242]
                        mem[mem[64] + 36] = mem[_1242]
                        idx = 0
                        while idx < _1538:
                            mem[idx + _1491 + 68] = mem[idx + _1242 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1538) > _1538:
                            mem[_1538 + _1491 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1538) + _1491 + -mem[64] + 68
                    mem[_1223 + _1242 + 32] = 0
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                        idx = idx + 1
                        continue 
                    _1493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1539 = mem[_1242]
                    mem[mem[64] + 36] = mem[_1242]
                    idx = 0
                    while idx < _1539:
                        mem[idx + _1493 + 68] = mem[idx + _1242 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1539) > _1539:
                        mem[_1539 + _1493 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1539) + _1493 + -mem[64] + 68
                _1112 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1112] = return_data.size
                mem[_1112 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if return_data.size < 68:
                        _1142 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1142] = 29
                        mem[_1142 + 32] = 'Transaction reverted silently'
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                            idx = idx + 1
                            continue 
                        _1198 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _1198 + 68] = mem[idx + _1142 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1198 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _1198 + -mem[64] + 100
                    _1141 = Mask(224, 0, return_data.size), mem[_1112 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_1112 + 32 len 4] >= 32
                    _1191 = mem[_1112 + 36]
                    require mem[_1112 + 36] <= test266151307()
                    require _1112 + mem[_1112 + 36] + 67 < _1112 + Mask(224, 0, return_data.size), mem[_1112 + 32 len 4] + 36
                    _1210 = mem[_1112 + mem[_1112 + 36] + 36]
                    require mem[_1112 + mem[_1112 + 36] + 36] <= test266151307()
                    _1236 = mem[64]
                    require mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32
                    mem[_1236] = _1210
                    require _1191 + _1210 + 68 <= _1141 + 36
                    s = 0
                    while s < _1210:
                        mem[s + _1236 + 32] = mem[s + _1112 + _1191 + 68]
                        s = s + 32
                        continue 
                    if ceil32(_1210) <= _1210:
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                            idx = idx + 1
                            continue 
                        _1495 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1210
                        idx = 0
                        while idx < _1210:
                            mem[idx + _1495 + 68] = mem[idx + _1236 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1210) > _1210:
                            mem[_1210 + _1495 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1210) + _1495 + -mem[64] + 68
                    mem[_1210 + _1236 + 32] = 0
                    if delegate.return_code:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                        idx = idx + 1
                        continue 
                    _1497 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1210
                    idx = 0
                    while idx < _1210:
                        mem[idx + _1497 + 68] = mem[idx + _1236 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1210) > _1210:
                        mem[_1210 + _1497 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1210) + _1497 + -mem[64] + 68
                if return_data.size < 68:
                    _1169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1169] = 29
                    mem[_1169 + 32] = 'Transaction reverted silently'
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                        idx = idx + 1
                        continue 
                    _1213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _1213 + 68] = mem[idx + _1169 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1213 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _1213 + -mem[64] + 100
                _1168 = Mask(224, 0, return_data.size), mem[_1112 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_1112 + 32 len 4] >= 32
                _1199 = mem[_1112 + 36]
                require mem[_1112 + 36] <= test266151307()
                require _1112 + mem[_1112 + 36] + 67 < _1112 + Mask(224, 0, return_data.size), mem[_1112 + 32 len 4] + 36
                _1226 = mem[_1112 + mem[_1112 + 36] + 36]
                require mem[_1112 + mem[_1112 + 36] + 36] <= test266151307()
                _1243 = mem[64]
                require mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32
                mem[_1243] = _1226
                require _1199 + _1226 + 68 <= _1168 + 36
                s = 0
                while s < _1226:
                    mem[s + _1243 + 32] = mem[s + _1112 + _1199 + 68]
                    s = s + 32
                    continue 
                if ceil32(_1226) <= _1226:
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                        idx = idx + 1
                        continue 
                    _1499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1226
                    idx = 0
                    while idx < _1226:
                        mem[idx + _1499 + 68] = mem[idx + _1243 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1226) > _1226:
                        mem[_1226 + _1499 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1226) + _1499 + -mem[64] + 68
                mem[_1226 + _1243 + 32] = 0
                if not arg2:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(delegate.return_code)
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                    idx = idx + 1
                    continue 
                _1501 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _1226
                idx = 0
                while idx < _1226:
                    mem[idx + _1501 + 68] = mem[idx + _1243 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1226) > _1226:
                    mem[_1226 + _1501 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1226) + _1501 + -mem[64] + 68
            _1008 = mem[64]
            mem[mem[64]] = 64
            _1010 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _1010:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1008 + 32] = (32 * _1010) + 96
            _1399 = mem[(32 * arg1.length) + 128]
            mem[_1008 + (32 * _1010) + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = _1008 + (32 * _1010) + (32 * _1399) + 128
            u = _1008 + (32 * _1010) + 128
            while idx < _1399:
                mem[u] = t + -_1008 + -(32 * _1010) - 128
                _1603 = mem[s]
                _1623 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1623:
                    mem[v + t + 32] = mem[v + _1603 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1623) > _1623:
                    mem[_1623 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1623) + t + 32
                u = u + 32
                continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length <= test266151307()
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[64] = (64 * arg1.length) + 160
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                _509 = mem[64]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _509 + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if mem[96] < 68:
                            _549 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_549] = 29
                            mem[_549 + 32] = 'Transaction reverted silently'
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _585 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _585 + 68] = mem[idx + _549 + 32]
                                idx = idx + 32
                                continue 
                            mem[_585 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _585 + -mem[64] + 100
                        _548 = mem[100]
                        require mem[100] >= 32
                        _567 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _608 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _646 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_646] = mem[mem[132] + 132]
                        require _567 + _608 + 164 <= _548 + 132
                        s = 0
                        while s < _608:
                            mem[s + _646 + 32] = mem[s + _567 + 164]
                            s = s + 32
                            continue 
                        if ceil32(_608) <= _608:
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1055 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1096 = mem[_646]
                            mem[mem[64] + 36] = mem[_646]
                            idx = 0
                            while idx < _1096:
                                mem[idx + _1055 + 68] = mem[idx + _646 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1096) > _1096:
                                mem[_1096 + _1055 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1096) + _1055 + -mem[64] + 68
                        mem[_608 + _646 + 32] = 0
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1057 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1097 = mem[_646]
                        mem[mem[64] + 36] = mem[_646]
                        idx = 0
                        while idx < _1097:
                            mem[idx + _1057 + 68] = mem[idx + _646 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1097) > _1097:
                            mem[_1097 + _1057 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1097) + _1057 + -mem[64] + 68
                    if mem[96] < 68:
                        _559 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_559] = 29
                        mem[_559 + 32] = 'Transaction reverted silently'
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _611 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _611 + 68] = mem[idx + _559 + 32]
                            idx = idx + 32
                            continue 
                        mem[_611 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _611 + -mem[64] + 100
                    _558 = mem[100]
                    require mem[100] >= 32
                    _586 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _629 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _666 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_666] = mem[mem[132] + 132]
                    require _586 + _629 + 164 <= _558 + 132
                    s = 0
                    while s < _629:
                        mem[s + _666 + 32] = mem[s + _586 + 164]
                        s = s + 32
                        continue 
                    if ceil32(_629) <= _629:
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1098 = mem[_666]
                        mem[mem[64] + 36] = mem[_666]
                        idx = 0
                        while idx < _1098:
                            mem[idx + _1059 + 68] = mem[idx + _666 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1098) > _1098:
                            mem[_1098 + _1059 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1098) + _1059 + -mem[64] + 68
                    mem[_629 + _666 + 32] = 0
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                        idx = idx + 1
                        continue 
                    _1061 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1099 = mem[_666]
                    mem[mem[64] + 36] = mem[_666]
                    idx = 0
                    while idx < _1099:
                        mem[idx + _1061 + 68] = mem[idx + _666 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1099) > _1099:
                        mem[_1099 + _1061 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1099) + _1061 + -mem[64] + 68
                _524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_524] = return_data.size
                mem[_524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if return_data.size < 68:
                        _552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_552] = 29
                        mem[_552 + 32] = 'Transaction reverted silently'
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                            idx = idx + 1
                            continue 
                        _588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _588 + 68] = mem[idx + _552 + 32]
                            idx = idx + 32
                            continue 
                        mem[_588 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _588 + -mem[64] + 100
                    _551 = Mask(224, 0, return_data.size), mem[_524 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_524 + 32 len 4] >= 32
                    _568 = mem[_524 + 36]
                    require mem[_524 + 36] <= test266151307()
                    require _524 + mem[_524 + 36] + 67 < _524 + Mask(224, 0, return_data.size), mem[_524 + 32 len 4] + 36
                    _612 = mem[_524 + mem[_524 + 36] + 36]
                    require mem[_524 + mem[_524 + 36] + 36] <= test266151307()
                    _648 = mem[64]
                    require mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32
                    mem[_648] = _612
                    require _568 + _612 + 68 <= _551 + 36
                    s = 0
                    while s < _612:
                        mem[s + _648 + 32] = mem[s + _524 + _568 + 68]
                        s = s + 32
                        continue 
                    if ceil32(_612) <= _612:
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                            idx = idx + 1
                            continue 
                        _1063 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _612
                        idx = 0
                        while idx < _612:
                            mem[idx + _1063 + 68] = mem[idx + _648 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_612) > _612:
                            mem[_612 + _1063 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_612) + _1063 + -mem[64] + 68
                    mem[_612 + _648 + 32] = 0
                    if delegate.return_code:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                        idx = idx + 1
                        continue 
                    _1065 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _612
                    idx = 0
                    while idx < _612:
                        mem[idx + _1065 + 68] = mem[idx + _648 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_612) > _612:
                        mem[_612 + _1065 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_612) + _1065 + -mem[64] + 68
                if return_data.size < 68:
                    _561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_561] = 29
                    mem[_561 + 32] = 'Transaction reverted silently'
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                        idx = idx + 1
                        continue 
                    _615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _615 + 68] = mem[idx + _561 + 32]
                        idx = idx + 32
                        continue 
                    mem[_615 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _615 + -mem[64] + 100
                _560 = Mask(224, 0, return_data.size), mem[_524 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_524 + 32 len 4] >= 32
                _589 = mem[_524 + 36]
                require mem[_524 + 36] <= test266151307()
                require _524 + mem[_524 + 36] + 67 < _524 + Mask(224, 0, return_data.size), mem[_524 + 32 len 4] + 36
                _632 = mem[_524 + mem[_524 + 36] + 36]
                require mem[_524 + mem[_524 + 36] + 36] <= test266151307()
                _667 = mem[64]
                require mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32
                mem[_667] = _632
                require _589 + _632 + 68 <= _560 + 36
                s = 0
                while s < _632:
                    mem[s + _667 + 32] = mem[s + _524 + _589 + 68]
                    s = s + 32
                    continue 
                if ceil32(_632) <= _632:
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                        idx = idx + 1
                        continue 
                    _1067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _632
                    idx = 0
                    while idx < _632:
                        mem[idx + _1067 + 68] = mem[idx + _667 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_632) > _632:
                        mem[_632 + _1067 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_632) + _1067 + -mem[64] + 68
                mem[_632 + _667 + 32] = 0
                if not arg2:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(delegate.return_code)
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                    idx = idx + 1
                    continue 
                _1069 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _632
                idx = 0
                while idx < _632:
                    mem[idx + _1069 + 68] = mem[idx + _667 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_632) > _632:
                    mem[_632 + _1069 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_632) + _1069 + -mem[64] + 68
            _497 = mem[64]
            mem[mem[64]] = 64
            _499 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _499:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_497 + 32] = (32 * _499) + 96
            _998 = mem[(32 * arg1.length) + 128]
            mem[_497 + (32 * _499) + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = _497 + (32 * _499) + (32 * _998) + 128
            u = _497 + (32 * _499) + 128
            while idx < _998:
                mem[u] = t + -_497 + -(32 * _499) - 128
                _1409 = mem[s]
                _1431 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1431:
                    mem[v + t + 32] = mem[v + _1409 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1431) > _1431:
                    mem[_1431 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1431) + t + 32
                u = u + 32
                continue 
        else:
            mem[(32 * arg1.length) + 160] = 96
            s = (32 * arg1.length) + 160
            idx = arg1.length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg1.length:
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                _1087 = mem[64]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _1087 + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if mem[96] < 68:
                            _1145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1145] = 29
                            mem[_1145 + 32] = 'Transaction reverted silently'
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1201 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _1201 + 68] = mem[idx + _1145 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1201 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _1201 + -mem[64] + 100
                        _1144 = mem[100]
                        require mem[100] >= 32
                        _1192 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1214 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _1238 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_1238] = mem[mem[132] + 132]
                        require _1192 + _1214 + 164 <= _1144 + 132
                        s = 0
                        while s < _1214:
                            mem[s + _1238 + 32] = mem[s + _1192 + 164]
                            s = s + 32
                            continue 
                        if ceil32(_1214) <= _1214:
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1505 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1544 = mem[_1238]
                            mem[mem[64] + 36] = mem[_1238]
                            idx = 0
                            while idx < _1544:
                                mem[idx + _1505 + 68] = mem[idx + _1238 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1544) > _1544:
                                mem[_1544 + _1505 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1544) + _1505 + -mem[64] + 68
                        mem[_1214 + _1238 + 32] = 0
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1545 = mem[_1238]
                        mem[mem[64] + 36] = mem[_1238]
                        idx = 0
                        while idx < _1545:
                            mem[idx + _1507 + 68] = mem[idx + _1238 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1545) > _1545:
                            mem[_1545 + _1507 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1545) + _1507 + -mem[64] + 68
                    if mem[96] < 68:
                        _1187 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1187] = 29
                        mem[_1187 + 32] = 'Transaction reverted silently'
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1217 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _1217 + 68] = mem[idx + _1187 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1217 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _1217 + -mem[64] + 100
                    _1186 = mem[100]
                    require mem[100] >= 32
                    _1202 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _1229 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _1244 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_1244] = mem[mem[132] + 132]
                    require _1202 + _1229 + 164 <= _1186 + 132
                    s = 0
                    while s < _1229:
                        mem[s + _1244 + 32] = mem[s + _1202 + 164]
                        s = s + 32
                        continue 
                    if ceil32(_1229) <= _1229:
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1509 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1546 = mem[_1244]
                        mem[mem[64] + 36] = mem[_1244]
                        idx = 0
                        while idx < _1546:
                            mem[idx + _1509 + 68] = mem[idx + _1244 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1546) > _1546:
                            mem[_1546 + _1509 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1546) + _1509 + -mem[64] + 68
                    mem[_1229 + _1244 + 32] = 0
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                        idx = idx + 1
                        continue 
                    _1511 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1547 = mem[_1244]
                    mem[mem[64] + 36] = mem[_1244]
                    idx = 0
                    while idx < _1547:
                        mem[idx + _1511 + 68] = mem[idx + _1244 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1547) > _1547:
                        mem[_1547 + _1511 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1547) + _1511 + -mem[64] + 68
                _1115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1115] = return_data.size
                mem[_1115 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if return_data.size < 68:
                        _1148 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1148] = 29
                        mem[_1148 + 32] = 'Transaction reverted silently'
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                            idx = idx + 1
                            continue 
                        _1204 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _1204 + 68] = mem[idx + _1148 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1204 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _1204 + -mem[64] + 100
                    _1147 = Mask(224, 0, return_data.size), mem[_1115 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_1115 + 32 len 4] >= 32
                    _1193 = mem[_1115 + 36]
                    require mem[_1115 + 36] <= test266151307()
                    require _1115 + mem[_1115 + 36] + 67 < _1115 + Mask(224, 0, return_data.size), mem[_1115 + 32 len 4] + 36
                    _1218 = mem[_1115 + mem[_1115 + 36] + 36]
                    require mem[_1115 + mem[_1115 + 36] + 36] <= test266151307()
                    _1240 = mem[64]
                    require mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32
                    mem[_1240] = _1218
                    require _1193 + _1218 + 68 <= _1147 + 36
                    s = 0
                    while s < _1218:
                        mem[s + _1240 + 32] = mem[s + _1115 + _1193 + 68]
                        s = s + 32
                        continue 
                    if ceil32(_1218) <= _1218:
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                            idx = idx + 1
                            continue 
                        _1513 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1218
                        idx = 0
                        while idx < _1218:
                            mem[idx + _1513 + 68] = mem[idx + _1240 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1218) > _1218:
                            mem[_1218 + _1513 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1218) + _1513 + -mem[64] + 68
                    mem[_1218 + _1240 + 32] = 0
                    if delegate.return_code:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                        idx = idx + 1
                        continue 
                    _1515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1218
                    idx = 0
                    while idx < _1218:
                        mem[idx + _1515 + 68] = mem[idx + _1240 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1218) > _1218:
                        mem[_1218 + _1515 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1218) + _1515 + -mem[64] + 68
                if return_data.size < 68:
                    _1189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1189] = 29
                    mem[_1189 + 32] = 'Transaction reverted silently'
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                        idx = idx + 1
                        continue 
                    _1221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _1221 + 68] = mem[idx + _1189 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1221 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _1221 + -mem[64] + 100
                _1188 = Mask(224, 0, return_data.size), mem[_1115 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_1115 + 32 len 4] >= 32
                _1205 = mem[_1115 + 36]
                require mem[_1115 + 36] <= test266151307()
                require _1115 + mem[_1115 + 36] + 67 < _1115 + Mask(224, 0, return_data.size), mem[_1115 + 32 len 4] + 36
                _1232 = mem[_1115 + mem[_1115 + 36] + 36]
                require mem[_1115 + mem[_1115 + 36] + 36] <= test266151307()
                _1245 = mem[64]
                require mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32
                mem[_1245] = _1232
                require _1205 + _1232 + 68 <= _1188 + 36
                s = 0
                while s < _1232:
                    mem[s + _1245 + 32] = mem[s + _1115 + _1205 + 68]
                    s = s + 32
                    continue 
                if ceil32(_1232) <= _1232:
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                        idx = idx + 1
                        continue 
                    _1517 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1232
                    idx = 0
                    while idx < _1232:
                        mem[idx + _1517 + 68] = mem[idx + _1245 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1232) > _1232:
                        mem[_1232 + _1517 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1232) + _1517 + -mem[64] + 68
                mem[_1232 + _1245 + 32] = 0
                if not arg2:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(delegate.return_code)
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                    idx = idx + 1
                    continue 
                _1519 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _1232
                idx = 0
                while idx < _1232:
                    mem[idx + _1519 + 68] = mem[idx + _1245 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1232) > _1232:
                    mem[_1232 + _1519 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1232) + _1519 + -mem[64] + 68
            _1009 = mem[64]
            mem[mem[64]] = 64
            _1011 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _1011:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1009 + 32] = (32 * _1011) + 96
            _1418 = mem[(32 * arg1.length) + 128]
            mem[_1009 + (32 * _1011) + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = _1009 + (32 * _1011) + (32 * _1418) + 128
            u = _1009 + (32 * _1011) + 128
            while idx < _1418:
                mem[u] = t + -_1009 + -(32 * _1011) - 128
                _1613 = mem[s]
                _1625 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1625:
                    mem[v + t + 32] = mem[v + _1613 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1625) > _1625:
                    mem[_1625 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1625) + t + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
