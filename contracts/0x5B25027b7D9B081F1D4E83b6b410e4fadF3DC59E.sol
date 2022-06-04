contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2, address arg3)
#  - harvest(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
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
mapping of address fee;
address treasuryAddress;
address liquidDepositorAddress;
array of address stor7887053984229333715756243741084912719879447020693965939365260134600710199889;
array of address stor57762096780731528330405058414938765910932439953606620384872163540286326260488;
array of uint256 stor73312145035153491510562152807817059592623112619519005820720798265374763743059;
array of uint256 stor73312145035153491510562152807817059592623112619519005820720798265374763743060;
array of uint256 stor73312145035153491510562152807817059592623112619519005820720798265374763743061;
array of uint256 stor73312145035153491510562152807817059592623112619519005820720798265374763743062;
array of address stor85606912040150585808358299647458656657391986846227832211658412328070808574132;

function poolLength() payable {
    return poolInfo.length
}

function feeAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return fee[arg1]
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function sub_4b509a80(?) payable {
    return sub_4b509a80
}

function MASTER_PID() payable {
    return MASTER_PID
}

function treasury() payable {
    return treasuryAddress
}

function lpToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lpToken.length
    return lpToken[arg1]
}

function liquidDepositor() payable {
    return liquidDepositorAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9c6b4424(?) payable {
    return sub_9c6b4424
}

function sub_b3a4e0c1(?) payable {
    return sub_b3a4e0c1Address
}

function rewarder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewarder.length
    return rewarder[arg1]
}

function strategies(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < strategies.length
    return strategies[arg1]
}

function MASTER_CHEF() payable {
    return MASTER_CHEFAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
}

function sub_672f1490(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MASTER_CHEFAddress = address(arg1)
    MASTER_PID = arg2
}

function setFeeAddresses(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if feeAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'setFeeAddress: FORBIDDEN'
    fee[arg1] = arg2
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'setTreasuryAddress: FORBIDDEN'
    treasuryAddress = arg1
}

function harvestFromMasterChef() payable {
    require ext_code.size(MASTER_CHEFAddress)
    call MASTER_CHEFAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args MASTER_PID, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function massHarvestFromStrategies() payable {
    idx = 0
    while idx < strategies.length:
        mem[0] = 107
        if strategies[idx]:
            require idx < strategies.length
            mem[0] = 107
            mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(strategies[idx])
            call strategies[idx].0x4641257d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function add(uint256 arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
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
    stor7FB4[stor105.length] = arg2
    rewarder.length++
    stor116F[stor106.length] = arg3
    strategies.length++
    storBD43[stor107.length] = arg4
    poolInfo.length++
    storA215[stor104.length] = 0
    storA215[stor104.length] = block.number
    storA215[stor104.length] = arg1
    storA215[stor104.length] = arg5
    if 1 > lpToken.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit LogPoolAddition(arg1, lpToken.length - 1, arg2, arg3);
}

function set(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, bool arg6) payable {
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

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        sub_b3a4e0c1Address = arg1
        feeAddress = arg2
        treasuryAddress = arg3
        sub_4b509a80 = 100 * 10^18
        sub_9c6b4424 = 10^12
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            sub_b3a4e0c1Address = arg1
            feeAddress = arg2
            treasuryAddress = arg3
            sub_4b509a80 = 100 * 10^18
            sub_9c6b4424 = 10^12
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            sub_b3a4e0c1Address = arg1
            feeAddress = arg2
            treasuryAddress = arg3
            sub_4b509a80 = 100 * 10^18
            sub_9c6b4424 = 10^12
            uint8(stor0.field_8) = 0
}

function sub_11ca2d51(?) payable {
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

function init(address arg1) payable {
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

function emergencyWithdraw(uint256 arg1, address arg2) payable {
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_256:
        return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
    require arg1 < strategies.length
    if not strategies[arg1]:
        require arg1 < lpToken.length
        require ext_code.size(lpToken[arg1])
        staticcall lpToken[arg1].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require arg1 < poolInfo.length
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, ext_call.return_data[0], poolInfo[arg1].field_0, arg1);
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
        require bool((4 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not sub_4b509a80:
            require ext_call.return_data[0]
            if not block.number - poolInfo[arg1].field_256:
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    require arg1 < poolInfo.length
                    poolInfo[arg1].field_0 += 0 / ext_call.return_data[0]
                    poolInfo[arg1].field_256 = block.number
                    emit LogUpdatePool(block.number, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                    return (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                           block.number,
                           poolInfo[arg1].field_512,
                           poolInfo[arg1].field_768
                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_call.return_data[0]
                if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < poolInfo.length
                poolInfo[arg1].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_256 = block.number
                emit LogUpdatePool(block.number, ext_call.return_data[0], (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                return (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                       block.number,
                       poolInfo[arg1].field_512,
                       poolInfo[arg1].field_768
            if (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]) / block.number - poolInfo[arg1].field_256 != 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]):
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    require arg1 < poolInfo.length
                    poolInfo[arg1].field_0 += 0 / ext_call.return_data[0]
                    poolInfo[arg1].field_256 = block.number
                    emit LogUpdatePool(block.number, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                    return (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                           block.number,
                           poolInfo[arg1].field_512,
                           poolInfo[arg1].field_768
                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_call.return_data[0]
                if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < poolInfo.length
                poolInfo[arg1].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_256 = block.number
                emit LogUpdatePool(block.number, ext_call.return_data[0], (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                return (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                       block.number,
                       poolInfo[arg1].field_512,
                       poolInfo[arg1].field_768
            if (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]) != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            require totalAllocPoint
            if not (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint:
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < poolInfo.length
                poolInfo[arg1].field_0 += 0 / ext_call.return_data[0]
                poolInfo[arg1].field_256 = block.number
                emit LogUpdatePool(block.number, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                return (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                       block.number,
                       poolInfo[arg1].field_512,
                       poolInfo[arg1].field_768
            if sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_call.return_data[0]
            if (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, ext_call.return_data[0], (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if ext_call.return_data[32] * sub_4b509a80 / sub_4b509a80 != ext_call.return_data[32]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_call.return_data[0]
        if not block.number - poolInfo[arg1].field_256:
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < poolInfo.length
                poolInfo[arg1].field_0 += 0 / ext_call.return_data[0]
                poolInfo[arg1].field_256 = block.number
                emit LogUpdatePool(block.number, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                return (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                       block.number,
                       poolInfo[arg1].field_512,
                       poolInfo[arg1].field_768
            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_call.return_data[0]
            if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, ext_call.return_data[0], (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) / block.number - poolInfo[arg1].field_256 != ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]):
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < poolInfo.length
                poolInfo[arg1].field_0 += 0 / ext_call.return_data[0]
                poolInfo[arg1].field_256 = block.number
                emit LogUpdatePool(block.number, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
                return (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                       block.number,
                       poolInfo[arg1].field_512,
                       poolInfo[arg1].field_768
            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_call.return_data[0]
            if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, ext_call.return_data[0], (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        require totalAllocPoint
        if not (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint:
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 += 0 / ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.number
            emit LogUpdatePool(block.number, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
            return (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
                   block.number,
                   poolInfo[arg1].field_512,
                   poolInfo[arg1].field_768
        if sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint != sub_9c6b4424:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_call.return_data[0]
        if (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < poolInfo.length
        poolInfo[arg1].field_0 += sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_256 = block.number
        emit LogUpdatePool(block.number, ext_call.return_data[0], (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, arg1);
        return (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0, 
               block.number,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768
    require arg1 < strategies.length
    require ext_code.size(strategies[arg1])
    staticcall strategies[arg1].balanceOf() with:
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
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        _407 = mem[64]
        mem[64] = mem[64] + 128
        mem[_407] = 0
        mem[_407 + 32] = 0
        mem[_407 + 64] = 0
        mem[_407 + 96] = 0
        require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
        mem[0] = 104
        _409 = mem[64]
        mem[64] = mem[64] + 128
        mem[_409] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_409 + 32] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_409 + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[_409 + 96] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768
        if block.number > poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
            require cd[((32 * idx) + arg1 + 36)] < strategies.length
            if not strategies[cd[((32 * idx) + arg1 + 36)]]:
                require cd[((32 * idx) + arg1 + 36)] < lpToken.length
                mem[0] = 105
                mem[mem[64] + 4] = this.address
                require ext_code.size(lpToken[cd[((32 * idx) + arg1 + 36)]])
                staticcall lpToken[cd[((32 * idx) + arg1 + 36)]].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _421 = mem[_419]
                if not mem[_419]:
                    mem[_409 + 32] = block.number
                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                    mem[0] = 104
                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                    mem[mem[64]] = block.number
                    mem[mem[64] + 32] = _421
                    mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                    emit LogUpdatePool(block.number, _421, poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                else:
                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(MASTER_CHEFAddress)
                    staticcall MASTER_CHEFAddress.0x17caf6f1 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _442 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _444 = mem[_442]
                    require ext_code.size(MASTER_CHEFAddress)
                    staticcall MASTER_CHEFAddress.0x1526fe27 with:
                            gas gas_remaining wei
                           args MASTER_PID
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _458 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _464 = mem[64]
                    require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
                    mem[64] = mem[64] + 128
                    require mem[_458] == mem[_458 + 12 len 20]
                    mem[_464] = mem[_458]
                    mem[_464 + 32] = mem[_458 + 32]
                    mem[_464 + 64] = mem[_458 + 64]
                    mem[_464 + 96] = mem[_458 + 96]
                    if not sub_4b509a80:
                        require _444
                        if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require _421
                                if (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_409] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_409 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 104
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _421
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _421
                                mem[mem[64] + 64] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _421, (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require _421
                                if (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_409] = (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_409 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 104
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _421
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _421
                                mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _421, (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            if (block.number * 0 / _444) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444) / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 != 0 / _444:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * 0 / _444) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444):
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require _421
                                    if (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _421
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _421
                                    mem[mem[64] + 64] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _421, (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require _421
                                    if (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _421
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _421
                                    mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _421, (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / (block.number * 0 / _444) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444) != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require totalAllocPoint
                                if not (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint:
                                    require _421
                                    if (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _421
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _421
                                    mem[mem[64] + 64] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _421, (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    if sub_9c6b4424 * (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint != sub_9c6b4424:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require _421
                                    if (sub_9c6b4424 * (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (sub_9c6b4424 * (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _421
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _421
                                    mem[mem[64] + 64] = (sub_9c6b4424 * (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _421, (sub_9c6b4424 * (block.number * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                    else:
                        if mem[_464 + 32] * sub_4b509a80 / sub_4b509a80 != mem[_464 + 32]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require _444
                        if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require _421
                                if (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_409] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_409 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 104
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _421
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _421
                                mem[mem[64] + 64] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _421, (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require _421
                                if (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_409] = (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_409 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 104
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _421
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _421
                                mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _421, (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            if (block.number * mem[_464 + 32] * sub_4b509a80 / _444) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444) / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 != mem[_464 + 32] * sub_4b509a80 / _444:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * mem[_464 + 32] * sub_4b509a80 / _444) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444):
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require _421
                                    if (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _421
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _421
                                    mem[mem[64] + 64] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _421, (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require _421
                                    if (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _421
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _421
                                    mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _421, (sub_9c6b4424 * 0 / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if (block.number * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / (block.number * mem[_464 + 32] * sub_4b509a80 / _444) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444) != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require totalAllocPoint
                                if not (block.number * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint:
                                    require _421
                                    if (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _421
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _421
                                    mem[mem[64] + 64] = (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _421, (0 / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    if sub_9c6b4424 * (block.number * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / (block.number * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint != sub_9c6b4424:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require _421
                                    if (sub_9c6b4424 * (block.number * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (sub_9c6b4424 * (block.number * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_464 + 32] * sub_4b509a80 / _444 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _421) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = mem[_409]
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    _664 = mem[_409]
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _421
                                    mem[mem[64] + 64] = _664
                                    emit LogUpdatePool(block.number, _421, _664, cd[((32 * idx) + arg1 + 36)]);
            else:
                require cd[((32 * idx) + arg1 + 36)] < strategies.length
                mem[0] = 107
                require ext_code.size(strategies[cd[((32 * idx) + arg1 + 36)]])
                staticcall strategies[cd[((32 * idx) + arg1 + 36)]].balanceOf() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _420 = mem[_418]
                require cd[((32 * idx) + arg1 + 36)] < lpToken.length
                mem[0] = 105
                mem[mem[64] + 4] = this.address
                require ext_code.size(lpToken[cd[((32 * idx) + arg1 + 36)]])
                staticcall lpToken[cd[((32 * idx) + arg1 + 36)]].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _438 = mem[_434]
                if _420 + mem[_434] < mem[_434]:
                    revert with 0, 'SafeMath: addition overflow'
                if not _420 + mem[_434]:
                    mem[_409 + 32] = block.number
                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                    mem[0] = 104
                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                    mem[mem[64]] = block.number
                    mem[mem[64] + 32] = _420 + _438
                    mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                    emit LogUpdatePool(block.number, _420 + _438, poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                else:
                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(MASTER_CHEFAddress)
                    staticcall MASTER_CHEFAddress.0x17caf6f1 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _467 = mem[_466]
                    require ext_code.size(MASTER_CHEFAddress)
                    staticcall MASTER_CHEFAddress.0x1526fe27 with:
                            gas gas_remaining wei
                           args MASTER_PID
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _476 = mem[64]
                    require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
                    mem[64] = mem[64] + 128
                    require mem[_474] == mem[_474 + 12 len 20]
                    mem[_476] = mem[_474]
                    mem[_476 + 32] = mem[_474 + 32]
                    mem[_476 + 64] = mem[_474 + 64]
                    mem[_476 + 96] = mem[_474 + 96]
                    if not sub_4b509a80:
                        require _467
                        if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require _420 + _438
                                if (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_409] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_409 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 104
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _420 + _438
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _420 + _438
                                mem[mem[64] + 64] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _420 + _438, (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require _420 + _438
                                if (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_409] = (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_409 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 104
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _420 + _438
                                mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _420 + _438, (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            if (block.number * 0 / _467) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467) / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 != 0 / _467:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * 0 / _467) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467):
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require _420 + _438
                                    if (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _420 + _438
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _420 + _438
                                    mem[mem[64] + 64] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _420 + _438, (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require _420 + _438
                                    if (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _420 + _438
                                    mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _420 + _438, (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / (block.number * 0 / _467) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467) != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require totalAllocPoint
                                if not (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint:
                                    require _420 + _438
                                    if (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _420 + _438
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _420 + _438
                                    mem[mem[64] + 64] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _420 + _438, (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    if sub_9c6b4424 * (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint != sub_9c6b4424:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require _420 + _438
                                    if (sub_9c6b4424 * (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (sub_9c6b4424 * (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _420 + _438
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _420 + _438
                                    mem[mem[64] + 64] = (sub_9c6b4424 * (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _420 + _438, (sub_9c6b4424 * (block.number * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * 0 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                    else:
                        if mem[_476 + 32] * sub_4b509a80 / sub_4b509a80 != mem[_476 + 32]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require _467
                        if not block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require _420 + _438
                                if (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_409] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_409 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 104
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _420 + _438
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _420 + _438
                                mem[mem[64] + 64] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _420 + _438, (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require _420 + _438
                                if (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_409] = (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                mem[_409 + 32] = block.number
                                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                mem[0] = 104
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438
                                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                mem[mem[64]] = block.number
                                mem[mem[64] + 32] = _420 + _438
                                mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                emit LogUpdatePool(block.number, _420 + _438, (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                        else:
                            if (block.number * mem[_476 + 32] * sub_4b509a80 / _467) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467) / block.number - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 != mem[_476 + 32] * sub_4b509a80 / _467:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * mem[_476 + 32] * sub_4b509a80 / _467) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467):
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require _420 + _438
                                    if (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _420 + _438
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _420 + _438
                                    mem[mem[64] + 64] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _420 + _438, (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require _420 + _438
                                    if (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _420 + _438
                                    mem[mem[64] + 64] = (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _420 + _438, (sub_9c6b4424 * 0 / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                            else:
                                if (block.number * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / (block.number * mem[_476 + 32] * sub_4b509a80 / _467) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467) != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require totalAllocPoint
                                if not (block.number * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint:
                                    require _420 + _438
                                    if (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 += 0 / _420 + _438
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _420 + _438
                                    mem[mem[64] + 64] = (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    emit LogUpdatePool(block.number, _420 + _438, (0 / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
                                else:
                                    if sub_9c6b4424 * (block.number * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / (block.number * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint != sub_9c6b4424:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require _420 + _438
                                    if (sub_9c6b4424 * (block.number * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_409] = (sub_9c6b4424 * (block.number * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * mem[_476 + 32] * sub_4b509a80 / _467 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / _420 + _438) + poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                                    mem[_409 + 32] = block.number
                                    require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                                    mem[0] = 104
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = mem[_409]
                                    poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.number
                                    _807 = mem[_409]
                                    mem[mem[64]] = block.number
                                    mem[mem[64] + 32] = _420 + _438
                                    mem[mem[64] + 64] = _807
                                    emit LogUpdatePool(block.number, _420 + _438, _807, cd[((32 * idx) + arg1 + 36)]);
        idx = idx + 1
        continue 
}

function sub_31411d43(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require arg1 < poolInfo.length
    require arg1 < strategies.length
    if not strategies[arg1]:
        require arg1 < lpToken.length
        require ext_code.size(lpToken[arg1])
        staticcall lpToken[arg1].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        if not ext_call.return_data[0]:
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
        require bool((4 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not sub_4b509a80:
            require ext_call.return_data[0]
            if not block.number - poolInfo[arg1].field_256:
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require sub_9c6b4424
                    if userInfo[arg1][address(arg2)].field_256 < 0:
                        if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                    else:
                        if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            if userInfo[arg1][address(arg2)].field_256 >= 0:
                                revert with 0, 'SignedSafeMath: subtraction overflow'
                            if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                                revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                        revert with 0, 'Integer < 0'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_call.return_data[0]
                if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
                if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return (((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]) / block.number - poolInfo[arg1].field_256 != 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]):
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require sub_9c6b4424
                    if userInfo[arg1][address(arg2)].field_256 < 0:
                        if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                    else:
                        if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            if userInfo[arg1][address(arg2)].field_256 >= 0:
                                revert with 0, 'SignedSafeMath: subtraction overflow'
                            if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                                revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                        revert with 0, 'Integer < 0'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
                if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_call.return_data[0]
                if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
                if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return (((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / (block.number * 0 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0]) != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            require totalAllocPoint
            if not (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint:
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_call.return_data[0]
            if (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
            if (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((sub_9c6b4424 * (block.number * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if ext_call.return_data[32] * sub_4b509a80 / sub_4b509a80 != ext_call.return_data[32]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_call.return_data[0]
        if not block.number - poolInfo[arg1].field_256:
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_call.return_data[0]
            if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
            if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) / block.number - poolInfo[arg1].field_256 != ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]):
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
                require sub_9c6b4424
                if userInfo[arg1][address(arg2)].field_256 < 0:
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                else:
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        if userInfo[arg1][address(arg2)].field_256 >= 0:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                        if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                            revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                    revert with 0, 'Integer < 0'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
            if sub_9c6b4424 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_9c6b4424:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_call.return_data[0]
            if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
            if (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((sub_9c6b4424 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0]) != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        require totalAllocPoint
        if not (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint:
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require sub_9c6b4424
            if userInfo[arg1][address(arg2)].field_256 < 0:
                if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
            else:
                if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    if userInfo[arg1][address(arg2)].field_256 >= 0:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
                    if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                        revert with 0, 'SignedSafeMath: subtraction overflow'
            if ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
                revert with 0, 'Integer < 0'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
        if sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint != sub_9c6b4424:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_call.return_data[0]
        if (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0 < poolInfo[arg1].field_0:
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
        if (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        require sub_9c6b4424
        if userInfo[arg1][address(arg2)].field_256 < 0:
            if ((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                revert with 0, 'SignedSafeMath: subtraction overflow'
        else:
            if ((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 > (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                if userInfo[arg1][address(arg2)].field_256 >= 0:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
                if ((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 <= (sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424:
                    revert with 0, 'SignedSafeMath: subtraction overflow'
        if ((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256 < 0:
            revert with 0, 'Integer < 0'
        return (((sub_9c6b4424 * (block.number * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * ext_call.return_data[32] * sub_4b509a80 / ext_call.return_data[0] * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) / sub_9c6b4424) - userInfo[arg1][address(arg2)].field_256)
    require arg1 < strategies.length
    require ext_code.size(strategies[arg1])
    staticcall strategies[arg1].balanceOf() with:
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



}
