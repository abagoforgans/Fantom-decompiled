contract main {




// =====================  Runtime code  =====================


const getEthBalance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
uint256 contractVersion;
mapping of uint8 stor152;
address factoryAddress;
address sub_f1a84695Address;
address adminToolsAddress;

function owner() {
    return owner
}

function contractVersion() {
    return contractVersion
}

function factory() {
    return factoryAddress
}

function adminToolsAddress() {
    return adminToolsAddress
}

function sub_eeda452b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor152[arg1])
}

function sub_f1a84695(?) {
    return sub_f1a84695Address
}

function isTokenAllowed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor152[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_193fd6b0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminToolsAddress = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateVersion(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    if arg1 <= contractVersion:
        revert with 0, '!NewVersion'
    contractVersion = arg1
}

function allowToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    if stor152[address(arg1)]:
        revert with 0, 'Token already allowed'
    stor152[address(arg1)] = 1
    emit TokenAdded(address(arg1), block.number);
}

function disallowToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    if not stor152[address(arg1)]:
        revert with 0, 'Token not allowed'
    stor152[address(arg1)] = 0
    emit TokenRemoved(address(arg1), block.number);
}

function setUniswapAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    if not arg1:
        revert with 0, 'JFC: Zero address for UNI factory'
    if not arg2:
        revert with 0, 'JFC: Zero address for UNI router02'
    factoryAddress = arg1
    sub_f1a84695Address = arg2
}

function ethWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg1 > eth.balance(this.address):
        revert with 0, 'Not enough contract balance'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TH ETH_TRANSFER_FAILED'
    emit EthWithdrawn(arg1, block.number);
    stor101 = 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        adminToolsAddress = arg1
        contractVersion = 1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            adminToolsAddress = arg1
            contractVersion = 1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                adminToolsAddress = arg1
                contractVersion = 1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    adminToolsAddress = arg1
                    contractVersion = 1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        adminToolsAddress = arg1
                        contractVersion = 1
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        adminToolsAddress = arg1
                        contractVersion = 1
                        uint8(stor0.field_8) = 0
}

function swapEthForToken(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    mem[ceil32(return_data.size) + 96] = 2
    require ext_code.size(sub_f1a84695Address)
    staticcall sub_f1a84695Address.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = arg1
    mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 228] = 128
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 356
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(sub_f1a84695Address)
    call sub_f1a84695Address.mem[mem[64] len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _25 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_25] <= test266151307()
    require _25 + mem[_25] + 31 < _25 + return_data.size
    if mem[_25 + mem[_25]] > test266151307():
        revert with 0, 65
    if _25 + ceil32(return_data.size) + ceil32(32 * mem[_25 + mem[_25]]) + 1 > test266151307() or ceil32(32 * mem[_25 + mem[_25]]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[_25 + mem[_25]]) + mem[_25] + 32 <= return_data.size
}

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not stor152[address(arg1)]:
        revert with 0, 'Token not allowed'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x87941ed8: address(arg1), arg2, block.number
    stor101 = 1
}

function sub_610fb115(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = msg.sender
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not stor152[address(arg1)]:
        revert with 0, 'Token not allowed'
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x87941ed8: address(arg1), arg3, block.number
    stor101 = 1
}

function swapTokenForToken(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    mem[ceil32(return_data.size) + 100] = sub_f1a84695Address
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f1a84695Address, arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.'
    mem[(2 * ceil32(return_data.size)) + 128] = arg1
    mem[(2 * ceil32(return_data.size)) + 160] = arg2
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 228] = arg4
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(sub_f1a84695Address)
    call sub_f1a84695Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
}

function pairInfo(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).token0() with:
                gas gas_remaining wei
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).token0() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 == ext_call.return_data[12 len 20]:
        return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0]
    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0]
}

function sub_2ac6ddbd(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = msg.sender
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JCompound: not an Admin'
    mem[ceil32(return_data.size) + 100] = sub_f1a84695Address
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f1a84695Address, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.'
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    require ext_code.size(sub_f1a84695Address)
    staticcall sub_f1a84695Address.WETH() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = arg2
    mem[(4 * ceil32(return_data.size)) + 228] = arg3
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(sub_f1a84695Address)
    call sub_f1a84695Address.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit EthReceived(msg.sender, msg.value, block.number);
    else:
        if unknown_0xb53472ef(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe79767af(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe79767af(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(adminToolsAddress)
                    staticcall adminToolsAddress.0x24d7806c with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'JCompound: not an Admin'
                    if not stor152[address(arg1)]:
                        revert with 0, 'Token not allowed'
                    stor152[address(arg1)] = 0
                    emit TokenRemoved(address(arg1), block.number);
                else:
                    if unknown_0xeeda452b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor152[arg1])
                    if uint32(call.func_hash) >> 224 != unknown_0xef4a64d4(?????):
                        if unknown_0xf1a84695(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_f1a84695Address
                        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                            require unknown_0xf9eaee0d(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor152[address(arg1)])
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require ext_code.size(adminToolsAddress)
                        staticcall adminToolsAddress.0x24d7806c with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'JCompound: not an Admin'
                        if not address(arg1):
                            revert with 0, 'JFC: Zero address for UNI factory'
                        if not address(arg2):
                            revert with 0, 'JFC: Zero address for UNI router02'
                        factoryAddress = address(arg1)
                        sub_f1a84695Address = address(arg2)
            else:
                if unknown_0xb53472ef(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(adminToolsAddress)
                    staticcall adminToolsAddress.0x24d7806c with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'JCompound: not an Admin'
                    if stor152[address(arg1)]:
                        revert with 0, 'Token already allowed'
                    stor152[address(arg1)] = 1
                    emit TokenAdded(address(arg1), block.number);
                else:
                    if unknown_0xc3dd56b9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if address(arg1) == address(arg2):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if address(arg1) < address(arg2):
                            if not address(arg1):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(arg1), address(arg2)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).token0() with:
                                    gas gas_remaining wei
                        else:
                            if not address(arg2):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(arg2), address(arg1)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).token0() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if address(arg1) == ext_call.return_data[12 len 20]:
                            return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0]
                        return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0]
                    if unknown_0xc45a0155(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return factoryAddress
                    if unknown_0xc4d66de8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                            adminToolsAddress = address(arg1)
                            contractVersion = 1
                        else:
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(owner, msg.sender);
                                adminToolsAddress = address(arg1)
                                contractVersion = 1
                            else:
                                uint16(stor0.field_0) = 257
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(owner, msg.sender);
                                    adminToolsAddress = address(arg1)
                                    contractVersion = 1
                                else:
                                    uint16(stor0.field_0) = 257
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(owner, msg.sender);
                                        adminToolsAddress = address(arg1)
                                        contractVersion = 1
                                    else:
                                        uint16(stor0.field_0) = 257
                                        uint8(stor0.field_8) = 0
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(owner, msg.sender);
                                            adminToolsAddress = address(arg1)
                                            contractVersion = 1
                                        else:
                                            uint16(stor0.field_0) = 257
                                            owner = msg.sender
                                            emit OwnershipTransferred(owner, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            adminToolsAddress = address(arg1)
                                            contractVersion = 1
                                            uint8(stor0.field_8) = 0
                    else:
                        if unknown_0xce6ec532(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return adminToolsAddress
                        require unknown_0xd16a4010(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        mem[132] = msg.sender
                        require ext_code.size(adminToolsAddress)
                        staticcall adminToolsAddress.0x24d7806c with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'JCompound: not an Admin'
                        mem[ceil32(return_data.size) + 132] = sub_f1a84695Address
                        mem[ceil32(return_data.size) + 164] = arg3
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_f1a84695Address, arg3
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'approve failed.'
                        mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
                        mem[(2 * ceil32(return_data.size)) + 192] = address(arg2)
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = arg4
                        mem[(2 * ceil32(return_data.size)) + 292] = 160
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 160
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(sub_f1a84695Address)
                        call sub_f1a84695Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        else:
            if unknown_0x610fb115(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x610fb115(?????):
                    if unknown_0x70ed0ada(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return eth.balance(this.address)
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    else:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if unknown_0xa0a8e460(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return contractVersion
                        require unknown_0xa87f884e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(adminToolsAddress)
                        staticcall adminToolsAddress.0x24d7806c with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'JCompound: not an Admin'
                        if arg1 <= contractVersion:
                            revert with 0, '!NewVersion'
                        contractVersion = arg1
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    mem[132] = msg.sender
                    require ext_code.size(adminToolsAddress)
                    staticcall adminToolsAddress.0x24d7806c with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'JCompound: not an Admin'
                    if stor101 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor101 = 2
                    if not stor152[address(arg1)]:
                        revert with 0, 'Token not allowed'
                    mem[ceil32(return_data.size) + 164] = address(arg2)
                    mem[ceil32(return_data.size) + 196] = arg3
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0x87941ed8: address(arg1), arg3, block.number
                    stor101 = 1
            else:
                if withdrawTokens(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    mem[132] = msg.sender
                    require ext_code.size(adminToolsAddress)
                    staticcall adminToolsAddress.0x24d7806c with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'JCompound: not an Admin'
                    if stor101 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor101 = 2
                    if not stor152[address(arg1)]:
                        revert with 0, 'Token not allowed'
                    mem[ceil32(return_data.size) + 164] = msg.sender
                    mem[ceil32(return_data.size) + 196] = arg2
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0x87941ed8: address(arg1), arg2, block.number
                    stor101 = 1
                else:
                    if unknown_0x193fd6b0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        adminToolsAddress = address(arg1)
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x2ac6ddbd(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x324083b1(?????):
                                if uint32(call.func_hash) >> 224 != unknown_0x35ec1a75(?????):
                                    require unknown_0x3aecd0e3(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    return ext_call.return_data[0]
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require ext_code.size(adminToolsAddress)
                                staticcall adminToolsAddress.0x24d7806c with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'JCompound: not an Admin'
                                if stor101 == 2:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor101 = 2
                                if arg1 > eth.balance(this.address):
                                    revert with 0, 'Not enough contract balance'
                                call msg.sender with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'TH ETH_TRANSFER_FAILED'
                                emit EthWithdrawn(arg1, block.number);
                                stor101 = 1
                            else:
                                require calldata.size - 4 >= 96
                                require arg1 == address(arg1)
                                mem[132] = msg.sender
                                require ext_code.size(adminToolsAddress)
                                staticcall adminToolsAddress.0x24d7806c with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'JCompound: not an Admin'
                                mem[ceil32(return_data.size) + 128] = 2
                                require ext_code.size(sub_f1a84695Address)
                                staticcall sub_f1a84695Address.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 192] = address(arg1)
                                mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                                mem[(2 * ceil32(return_data.size)) + 260] = 128
                                mem[(2 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 160
                                t = (2 * ceil32(return_data.size)) + 388
                                while idx < mem[ceil32(return_data.size) + 128]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                                require ext_code.size(sub_f1a84695Address)
                                call sub_f1a84695Address.mem[mem[64] len 4] with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _454 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_454] <= test266151307()
                                require _454 + mem[_454] + 31 < _454 + return_data.size
                                if mem[_454 + mem[_454]] > test266151307():
                                    revert with 0, 65
                                if _454 + ceil32(return_data.size) + ceil32(32 * mem[_454 + mem[_454]]) + 1 > test266151307() or ceil32(32 * mem[_454 + mem[_454]]) + 1 < 0:
                                    revert with 0, 65
                                require (32 * mem[_454 + mem[_454]]) + mem[_454] + 32 <= return_data.size
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require arg1 == address(arg1)
                            mem[132] = msg.sender
                            require ext_code.size(adminToolsAddress)
                            staticcall adminToolsAddress.0x24d7806c with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'JCompound: not an Admin'
                            mem[ceil32(return_data.size) + 132] = sub_f1a84695Address
                            mem[ceil32(return_data.size) + 164] = arg2
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_f1a84695Address, arg2
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'approve failed.'
                            mem[(2 * ceil32(return_data.size)) + 128] = 2
                            mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
                            require ext_code.size(sub_f1a84695Address)
                            staticcall sub_f1a84695Address.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = arg2
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3
                            mem[(4 * ceil32(return_data.size)) + 292] = 160
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 160
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
                            require ext_code.size(sub_f1a84695Address)
                            call sub_f1a84695Address.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
                                revert with 0, 65
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
}



}
