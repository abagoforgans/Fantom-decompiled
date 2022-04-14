contract main {




// =====================  Runtime code  =====================


#
#  - execTransaction(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, bytes arg10)
#  - getModulesPaginated(address arg1, uint256 arg2)
#
const getChainId = chainid

const domainSeparator = sha3(0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218, chainid, address(this.address))

const VERSION = '', 0


mapping of struct stor1;
mapping of struct stor2;
uint256 stor3;
uint256 threshold;
uint256 nonce;
mapping of uint256 signedMessages;
mapping of uint256 approvedHashes;
uint256 stor4A20;
uint256 stor6C9A;

function signedMessages(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return signedMessages[arg1]
}

function approvedHashes(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return approvedHashes[arg1][arg2]
}

function nonce() {
    return nonce
}

function getThreshold() {
    return threshold
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 == arg1:
        return arg1 != 1
    return bool(address(stor2[address(arg1)].field_0))
}

function isModuleEnabled(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return arg1 != 1
    return bool(address(stor1[address(arg1)].field_0))
}

function setGuard(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'GS031'
    stor4A20 = arg1
    emit ChangedGuard(arg1);
}

function setFallbackHandler(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'GS031'
    stor6C9A = arg1
    emit ChangedFallbackHandler(arg1);
}

function approveHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not address(stor2[msg.sender].field_0):
        revert with 0, 'GS030'
    approvedHashes[msg.sender][arg1] = 1
    emit ApproveHash(arg1, msg.sender);
}

function changeThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0, 'GS031'
    if arg1 > stor3:
        revert with 0, 'GS201'
    if arg1 < 1:
        revert with 0, 'GS202'
    threshold = arg1
    emit ChangedThreshold(arg1);
}

function _fallback() {
    if not stor6C9A:
    call stor6C9A with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4], Mask(160, 96, msg.sender) >> 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function enableModule(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'GS031'
    if not arg1:
        revert with 0, 'GS101'
    if 1 == arg1:
        revert with 0, 'GS101'
    if address(stor1[address(arg1)].field_0):
        revert with 0, 'GS102'
    address(stor1[arg1].field_0) = address(stor1[1].field_0)
    address(stor1[1].field_0) = arg1
    emit EnabledModule(arg1);
}

function disableModule(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        revert with 0, 'GS031'
    if not arg2:
        revert with 0, 'GS101'
    if 1 == arg2:
        revert with 0, 'GS101'
    if arg2 != address(stor1[address(arg1)].field_0):
        revert with 0, 'GS103'
    address(stor1[arg1].field_0) = address(stor1[address(arg2)].field_0)
    address(stor1[address(arg2)].field_0) = 0
    emit DisabledModule(arg2);
}

function getStorageAt(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 32 * arg2 > test266151307():
        revert with 0, 65
    if Mask(251, 0, arg2):
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        mem[(32 * idx) + 128] = stor[idx + arg1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=32 * arg2, data=mem[128 len floor32(arg2)])
}

function simulateAndRevert(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    revert with delegate.return_code, return_data.size, ext_call.return_data[0 len return_data.size]
}

function getTransactionHash(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 < 2
    require arg8 == arg8
    require arg9 == arg9
    if arg4 >= 2:
        revert with 0, 33
    return sha3(0, 0, sha3(0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218, chainid, this.address), sha3(0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8, address(arg1), arg2, sha3(arg3[all]), arg4, arg5, arg6, arg7, address(arg8), address(arg9), arg10))
}

function encodeTransactionData(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 < 2
    require arg8 == arg8
    require arg9 == arg9
    if arg4 >= 2:
        revert with 0, 33
    return 32, 66, 
           0, 0, sha3(0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218, chainid, this.address), sha3(0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8, address(arg1), arg2, sha3(arg3[all]), arg4, arg5, arg6, arg7, address(arg8), address(arg9), arg10), 0 >> 272,
           0
}

function swapOwner(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if msg.sender != this.address:
        revert with 0, 'GS031'
    if not arg3:
        revert with 0, 'GS203'
    if 1 == arg3:
        revert with 0, 'GS203'
    if this.address == arg3:
        revert with 0, 'GS203'
    if address(stor2[address(arg3)].field_0):
        revert with 0, 'GS204'
    if not arg2:
        revert with 0, 'GS203'
    if 1 == arg2:
        revert with 0, 'GS203'
    if arg2 != address(stor2[address(arg1)].field_0):
        revert with 0, 'GS205'
    address(stor2[arg3].field_0) = address(stor2[address(arg2)].field_0)
    address(stor2[arg1].field_0) = arg3
    address(stor2[address(arg2)].field_0) = 0
    emit RemovedOwner(arg2);
    emit AddedOwner(arg3);
}

function addOwnerWithThreshold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'GS031'
    if not arg1:
        revert with 0, 'GS203'
    if 1 == arg1:
        revert with 0, 'GS203'
    if this.address == arg1:
        revert with 0, 'GS203'
    if address(stor2[address(arg1)].field_0):
        revert with 0, 'GS204'
    address(stor2[arg1].field_0) = address(stor2[1].field_0)
    address(stor2[1].field_0) = arg1
    if stor3 == -1:
        revert with 0, 17
    stor3++
    emit AddedOwner(arg1);
    if threshold != arg2:
        if msg.sender != this.address:
            revert with 0, 'GS031'
        if arg2 > stor3:
            revert with 0, 'GS201'
        if arg2 < 1:
            revert with 0, 'GS202'
        threshold = arg2
        emit ChangedThreshold(arg2);
}

function getOwners() {
    if stor3 > test266151307():
        revert with 0, 65
    mem[96] = stor3
    mem[64] = (32 * stor3) + 128
    if stor3:
        mem[128 len 32 * stor3] = call.data[calldata.size len 32 * stor3]
    idx = address(stor2[1].field_0)
    s = 0
    while address(idx) != 1:
        if s >= stor3:
            revert with 0, 50
        mem[(32 * s) + 128] = address(idx)
        mem[0] = address(idx)
        mem[32] = 2
        if s == -1:
            revert with 0, 17
        idx = address(stor2[address(idx)].field_0)
        s = s + 1
        continue 
    mem[(32 * stor3) + 128] = 32
    mem[(32 * stor3) + 160] = stor3
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3) + -mem[64] + 192
}

function removeOwner(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        revert with 0, 'GS031'
    if stor3 < 1:
        revert with 0, 17
    if stor3 - 1 < arg3:
        revert with 0, 'GS201'
    if not arg2:
        revert with 0, 'GS203'
    if 1 == arg2:
        revert with 0, 'GS203'
    if arg2 != address(stor2[address(arg1)].field_0):
        revert with 0, 'GS205'
    address(stor2[arg1].field_0) = address(stor2[address(arg2)].field_0)
    address(stor2[address(arg2)].field_0) = 0
    if not stor3:
        revert with 0, 17
    stor3--
    emit RemovedOwner(arg2);
    if threshold != arg3:
        if msg.sender != this.address:
            revert with 0, 'GS031'
        if arg3 > stor3:
            revert with 0, 'GS201'
        if arg3 < 1:
            revert with 0, 'GS202'
        threshold = arg3
        emit ChangedThreshold(arg3);
}

function execTransactionFromModule(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 < 2
    if 1 == msg.sender:
        revert with 0, 'GS104'
    if not address(stor1[msg.sender].field_0):
        revert with 0, 'GS104'
    if arg4 > 1:
        revert with 0, 33
    if arg4 != 1:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not ext_call.success:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        return bool(ext_call.success)
    delegate arg1 with:
         gas gas_remaining wei
        args arg3[all]
    if not delegate.return_code:
        emit ExecutionFromModuleFailure(msg.sender);
    else:
        emit ExecutionFromModuleSuccess(msg.sender);
    return bool(delegate.return_code)
}

function execTransactionFromModuleReturnData(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 < 2
    if 1 == msg.sender:
        revert with 0, 'GS104'
    if not address(stor1[msg.sender].field_0):
        revert with 0, 'GS104'
    if arg4 > 1:
        revert with 0, 33
    if arg4 != 1:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not ext_call.success:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    delegate arg1 with:
         gas gas_remaining wei
        args arg3[all]
    if not delegate.return_code:
        emit ExecutionFromModuleFailure(msg.sender);
    else:
        emit ExecutionFromModuleSuccess(msg.sender);
    return bool(delegate.return_code), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function requiredTxGas(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 < 2
    if arg4 > 1:
        revert with 0, 33
    if arg4 != 1:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        require ext_call.success
    else:
        delegate arg1 with:
             gas gas_remaining wei
            args arg3[all]
        require delegate.return_code
    if gas_remaining < gas_remaining:
        revert with 0, 17
    mem[ceil32(arg3.length) + 160] = 0
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 196] = 32
    mem[ceil32(arg3.length) + 228] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 260 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) > Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
        mem[ceil32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 260] = 0
    revert with 0, 
                32,
                mem[ceil32(arg3.length) + 228 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 32]
}

function setup(address[] arg1, uint256 arg2, address arg3, bytes arg4, address arg5, address arg6, uint256 arg7, address arg8) {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    require arg6 == arg6
    require arg8 == arg8
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if threshold:
        revert with 0, 'GS200'
    if arg2 > arg1.length:
        revert with 0, 'GS201'
    if arg2 < 1:
        revert with 0, 'GS202'
    idx = 0
    s = 1
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'GS203'
        if 1 == mem[(32 * idx) + 140 len 20]:
            revert with 0, 'GS203'
        if this.address == mem[(32 * idx) + 140 len 20]:
            revert with 0, 'GS203'
        if address(s) == mem[(32 * idx) + 140 len 20]:
            revert with 0, 'GS203'
        if address(stor2[mem[(32 * idx) + 140 len 20]].field_0):
            revert with 0, 'GS204'
        mem[0] = address(s)
        mem[32] = 2
        address(stor2[address(s)].field_0) = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        continue 
    uint8(stor2[address((_450 * arg1.length) + 1)].field_0) = 1
    Mask(152, 0, stor2[address((_450 * arg1.length) + 1)].field_8) = 0
    stor3 = arg1.length
    threshold = arg2
    if arg5:
        stor6C9A = arg5
    mem[(32 * arg1.length) + 160 len arg4.length] = arg4[all]
    mem[(32 * arg1.length) + arg4.length + 160] = 0
    if address(stor1[1].field_0):
        revert with 0, 'GS100'
    uint8(stor1[1].field_0) = 1
    Mask(152, 0, stor1[1].field_8) = 0
    if arg3:
        delegate arg3 with:
             gas gas_remaining wei
            args arg4[all]
        if not delegate.return_code:
            revert with 0, 'GS000'
    if not arg7:
        mem[(32 * arg1.length) + ceil32(arg4.length) + 160] = 128
        mem[(32 * arg1.length) + ceil32(arg4.length) + 288] = arg1.length
        idx = 0
        s = (32 * arg1.length) + ceil32(arg4.length) + 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg1.length) + ceil32(arg4.length) + 192] = arg2
        mem[(32 * arg1.length) + ceil32(arg4.length) + 224] = arg3
        mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = arg5
        emit SafeSetup(address rg1, address[] rg2, uint256 rg3, address rg4, address rg5):
                       mem[(32 * arg1.length) + ceil32(arg4.length) + 160 len (96 * arg1.length) + 160],
                       msg.sender,
    else:
        if arg7 > -1:
            revert with 0, 17
        require arg7 >= arg7
        if not arg8:
            if not arg6:
                if 1 < block.gasprice:
                    if not arg7:
                        call tx.origin with:
                             gas 2300 wei
                    else:
                        if arg7 and 1 > -1 / arg7:
                            revert with 0, 17
                        if not arg7:
                            revert with 0, 18
                        require arg7 / arg7 == 1
                        call tx.origin with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not arg7:
                        call tx.origin with:
                             gas 2300 wei
                    else:
                        if arg7 and block.gasprice > -1 / arg7:
                            revert with 0, 17
                        if not arg7:
                            revert with 0, 18
                        require arg7 * block.gasprice / arg7 == block.gasprice
                        call tx.origin with:
                           value arg7 * block.gasprice wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 'GS011'
                mem[(32 * arg1.length) + ceil32(arg4.length) + 160] = 128
                mem[(32 * arg1.length) + ceil32(arg4.length) + 288] = arg1.length
                idx = 0
                s = (32 * arg1.length) + ceil32(arg4.length) + 320
                t = arg1 + 36
                while idx < arg1.length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg1.length) + ceil32(arg4.length) + 192] = arg2
                mem[(32 * arg1.length) + ceil32(arg4.length) + 224] = arg3
                mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = arg5
                emit SafeSetup(address rg1, address[] rg2, uint256 rg3, address rg4, address rg5):
                               mem[(32 * arg1.length) + ceil32(arg4.length) + 160 len (96 * arg1.length) + 160],
                               msg.sender,
            else:
                if not arg7:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 196] = tx.origin
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 228] = 0
                else:
                    if arg7 and 1 > -1 / arg7:
                        revert with 0, 17
                    if not arg7:
                        revert with 0, 18
                    require arg7 / arg7 == 1
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 196] = tx.origin
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 228] = arg7
                mem[(32 * arg1.length) + ceil32(arg4.length) + 160] = 68
                mem[(32 * arg1.length) + ceil32(arg4.length) + 196 len 28] = address(tx.origin) << 64
                mem[(32 * arg1.length) + ceil32(arg4.length) + 192 len 4] = unknown_0xa9059cbb(?????)
                call arg6.0xa9059cbb with:
                     gas gas_remaining - 10000 wei
                    args mem[(32 * arg1.length) + ceil32(arg4.length) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'GS012'
                else:
                    if 32 != return_data.size:
                        revert with 0, 'GS012'
                    if not ext_call.success or not ext_call.return_data[0]:
                        revert with 0, 'GS012'
                mem[(32 * arg1.length) + ceil32(arg4.length) + 260] = 128
                mem[(32 * arg1.length) + ceil32(arg4.length) + 388] = arg1.length
                idx = 0
                s = (32 * arg1.length) + ceil32(arg4.length) + 420
                t = arg1 + 36
                while idx < arg1.length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = arg2
                mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = arg3
                mem[(32 * arg1.length) + ceil32(arg4.length) + 356] = arg5
                emit SafeSetup(address rg1, address[] rg2, uint256 rg3, address rg4, address rg5):
                               mem[(32 * arg1.length) + ceil32(arg4.length) + 260 len (96 * arg1.length) + 160],
                               msg.sender,
        else:
            if not arg6:
                if 1 < block.gasprice:
                    if not arg7:
                        call arg8 with:
                             gas 2300 wei
                    else:
                        if arg7 and 1 > -1 / arg7:
                            revert with 0, 17
                        if not arg7:
                            revert with 0, 18
                        require arg7 / arg7 == 1
                        call arg8 with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not arg7:
                        call arg8 with:
                             gas 2300 wei
                    else:
                        if arg7 and block.gasprice > -1 / arg7:
                            revert with 0, 17
                        if not arg7:
                            revert with 0, 18
                        require arg7 * block.gasprice / arg7 == block.gasprice
                        call arg8 with:
                           value arg7 * block.gasprice wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 'GS011'
                mem[(32 * arg1.length) + ceil32(arg4.length) + 160] = 128
                mem[(32 * arg1.length) + ceil32(arg4.length) + 288] = arg1.length
                idx = 0
                s = (32 * arg1.length) + ceil32(arg4.length) + 320
                t = arg1 + 36
                while idx < arg1.length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg1.length) + ceil32(arg4.length) + 192] = arg2
                mem[(32 * arg1.length) + ceil32(arg4.length) + 224] = arg3
                mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = arg5
                emit SafeSetup(address rg1, address[] rg2, uint256 rg3, address rg4, address rg5):
                               mem[(32 * arg1.length) + ceil32(arg4.length) + 160 len (96 * arg1.length) + 160],
                               msg.sender,
            else:
                if not arg7:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 196] = arg8
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 228] = 0
                else:
                    if arg7 and 1 > -1 / arg7:
                        revert with 0, 17
                    if not arg7:
                        revert with 0, 18
                    require arg7 / arg7 == 1
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 196] = arg8
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 228] = arg7
                mem[(32 * arg1.length) + ceil32(arg4.length) + 160] = 68
                mem[(32 * arg1.length) + ceil32(arg4.length) + 196 len 28] = address(arg8) << 64
                mem[(32 * arg1.length) + ceil32(arg4.length) + 192 len 4] = unknown_0xa9059cbb(?????)
                call arg6.0xa9059cbb with:
                     gas gas_remaining - 10000 wei
                    args mem[(32 * arg1.length) + ceil32(arg4.length) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'GS012'
                else:
                    if 32 != return_data.size:
                        revert with 0, 'GS012'
                    if not ext_call.success or not ext_call.return_data[0]:
                        revert with 0, 'GS012'
                mem[(32 * arg1.length) + ceil32(arg4.length) + 260] = 128
                mem[(32 * arg1.length) + ceil32(arg4.length) + 388] = arg1.length
                idx = 0
                s = (32 * arg1.length) + ceil32(arg4.length) + 420
                t = arg1 + 36
                while idx < arg1.length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = arg2
                mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = arg3
                mem[(32 * arg1.length) + ceil32(arg4.length) + 356] = arg5
                emit SafeSetup(address rg1, address[] rg2, uint256 rg3, address rg4, address rg5):
                               mem[(32 * arg1.length) + ceil32(arg4.length) + 260 len (96 * arg1.length) + 160],
                               msg.sender,
}

function checkSignatures(bytes32 arg1, bytes arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98
    mem[ceil32(ceil32(arg2.length)) + 97] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg3.length] = arg3[all]
    mem[ceil32(ceil32(arg2.length)) + arg3.length + 129] = 0
    if not threshold:
        revert with 0, 'GS001'
    if threshold and 65 > -1 / threshold:
        revert with 0, 17
    if not threshold:
        revert with 0, 18
    require 65 * threshold / threshold == 65
    if arg3.length < 65 * threshold:
        revert with 0, 'GS020'
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    while idx < threshold:
        _185 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
        _186 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
        _187 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 162]
        if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]:
            if 1 == mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]:
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] == msg.sender:
                    if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] <= address(s):
                        revert with 0, 'GS026'
                    mem[0] = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]
                    mem[32] = 2
                    if not address(stor2[mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]].field_0):
                        revert with 0, 'GS026'
                else:
                    if not approvedHashes[mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]][arg1]:
                        revert with 0, 'GS025'
                    if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] <= address(s):
                        revert with 0, 'GS026'
                    mem[0] = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]
                    mem[32] = 2
                    if not address(stor2[address(mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129])].field_0):
                        revert with 0, 'GS026'
                if 1 == mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]:
                    revert with 0, 'GS026'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]
                s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                continue 
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1] <= 30:
                _188 = mem[64]
                mem[64] = mem[64] + 32
                mem[_188 + 32] = arg1
                mem[_188 + 64] = uint8(_187)
                mem[_188 + 96] = _185
                mem[_188 + 128] = _186
                signer = erecover(arg1, _187 << 248, _185, _186) 
                mem[_188] = signer
            else:
                _190 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = arg1
                _194 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _196 = sha3(mem[_194 + 32 len mem[_194]])
                if uint8(_187) < 4:
                    revert with 0, 17
                mem[_190 + 92] = 0
                mem[64] = _190 + 124
                mem[_190 + 124] = _196
                mem[_190 + 156] = uint8(uint8(_187) - 4)
                mem[_190 + 188] = _185
                mem[_190 + 220] = _186
                signer = erecover(_196, uint8(_187) - 4 << 248, _185, _186) 
                mem[_190 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) <= address(s):
                revert with 0, 'GS026'
            mem[0] = address(signer)
            mem[32] = 2
            if not address(stor2[address(signer)].field_0):
                revert with 0, 'GS026'
            if 1 == address(signer):
                revert with 0, 'GS026'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _186
            s = _185
            s = uint8(_187)
            s = signer
            s = signer
            continue 
        if not threshold:
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] < 0:
                revert with 0, 'GS021'
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                revert with 0, 17
            require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 'GS022'
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                revert with 0, 17
            require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > !mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129]:
                revert with 0, 17
            require mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] >= 0
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 'GS023'
            _248 = mem[64]
            mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _250 = mem[96]
            mem[mem[64] + 68] = mem[96]
            t = 0
            while t < mem[96]:
                mem[t + mem[64] + 100] = mem[t + 128]
                t = t + 32
                continue 
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 36] = ceil32(mem[96]) + 96
                _365 = mem[_186 + ceil32(ceil32(arg2.length)) + 129]
                mem[ceil32(mem[96]) + mem[64] + 100] = mem[_186 + ceil32(ceil32(arg2.length)) + 129]
                t = 0
                while t < _365:
                    mem[t + ceil32(_250) + mem[64] + 132] = mem[_186 + ceil32(ceil32(arg2.length)) + t + 161]
                    t = t + 32
                    continue 
                if ceil32(_365) <= _365:
                    require ext_code.size(address(_185))
                    staticcall address(_185).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_365) + ceil32(_250) + _248 + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _482 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_482] == Mask(32, 224, mem[_482])
                    if Mask(32, 224, mem[_482]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'GS024'
                else:
                    mem[ceil32(_250) + _248 + _365 + 132] = 0
                    require ext_code.size(address(_185))
                    staticcall address(_185).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_365) + ceil32(_250) + _248 + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _486 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_486] == Mask(32, 224, mem[_486])
                    if Mask(32, 224, mem[_486]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'GS024'
            else:
                mem[mem[64] + mem[96] + 100] = 0
                mem[mem[64] + 36] = ceil32(mem[96]) + 96
                _367 = mem[_186 + ceil32(ceil32(arg2.length)) + 129]
                mem[ceil32(mem[96]) + mem[64] + 100] = mem[_186 + ceil32(ceil32(arg2.length)) + 129]
                t = 0
                while t < _367:
                    mem[t + ceil32(_250) + mem[64] + 132] = mem[_186 + ceil32(ceil32(arg2.length)) + t + 161]
                    t = t + 32
                    continue 
                if ceil32(_367) <= _367:
                    require ext_code.size(address(_185))
                    staticcall address(_185).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_367) + ceil32(_250) + _248 + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_483] == Mask(32, 224, mem[_483])
                    if Mask(32, 224, mem[_483]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'GS024'
                else:
                    mem[ceil32(_250) + _248 + _367 + 132] = 0
                    require ext_code.size(address(_185))
                    staticcall address(_185).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_367) + ceil32(_250) + _248 + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_487] == Mask(32, 224, mem[_487])
                    if Mask(32, 224, mem[_487]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'GS024'
        else:
            if threshold and 65 > -1 / threshold:
                revert with 0, 17
            if not threshold:
                revert with 0, 18
            require 65 * threshold / threshold == 65
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] < 65 * threshold:
                revert with 0, 'GS021'
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                revert with 0, 17
            require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 'GS022'
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                revert with 0, 17
            require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > !mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129]:
                revert with 0, 17
            require mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] >= 0
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 'GS023'
            _253 = mem[64]
            mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _256 = mem[96]
            mem[mem[64] + 68] = mem[96]
            t = 0
            while t < mem[96]:
                mem[t + mem[64] + 100] = mem[t + 128]
                t = t + 32
                continue 
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 36] = ceil32(mem[96]) + 96
                _364 = mem[_186 + ceil32(ceil32(arg2.length)) + 129]
                mem[ceil32(mem[96]) + mem[64] + 100] = mem[_186 + ceil32(ceil32(arg2.length)) + 129]
                t = 0
                while t < _364:
                    mem[t + ceil32(mem[96]) + mem[64] + 132] = mem[_186 + ceil32(ceil32(arg2.length)) + t + 161]
                    t = t + 32
                    continue 
                if ceil32(_364) <= _364:
                    require ext_code.size(address(_185))
                    staticcall address(_185).isValidSignature(bytes rg1, bytes rg2) with:
                            gas gas_remaining wei
                           args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_364) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _480 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_480] == Mask(32, 224, mem[_480])
                    if Mask(32, 224, mem[_480]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'GS024'
                else:
                    mem[ceil32(mem[96]) + mem[64] + _364 + 132] = 0
                    require ext_code.size(address(_185))
                    staticcall address(_185).isValidSignature(bytes rg1, bytes rg2) with:
                            gas gas_remaining wei
                           args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_364) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _484 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_484] == Mask(32, 224, mem[_484])
                    if Mask(32, 224, mem[_484]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'GS024'
            else:
                mem[mem[64] + mem[96] + 100] = 0
                mem[mem[64] + 36] = ceil32(mem[96]) + 96
                _366 = mem[_186 + ceil32(ceil32(arg2.length)) + 129]
                mem[ceil32(mem[96]) + mem[64] + 100] = mem[_186 + ceil32(ceil32(arg2.length)) + 129]
                t = 0
                while t < _366:
                    mem[t + ceil32(_256) + mem[64] + 132] = mem[_186 + ceil32(ceil32(arg2.length)) + t + 161]
                    t = t + 32
                    continue 
                if ceil32(_366) <= _366:
                    require ext_code.size(address(_185))
                    staticcall address(_185).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_366) + ceil32(_256) + _253 + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _481 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_481] == Mask(32, 224, mem[_481])
                    if Mask(32, 224, mem[_481]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'GS024'
                else:
                    mem[ceil32(_256) + _253 + _366 + 132] = 0
                    require ext_code.size(address(_185))
                    staticcall address(_185).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(_366) + ceil32(_256) + _253 + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_485] == Mask(32, 224, mem[_485])
                    if Mask(32, 224, mem[_485]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'GS024'
        if address(_185) <= address(s):
            revert with 0, 'GS026'
        mem[0] = address(_185)
        mem[32] = 2
        if not address(stor2[address(_185)].field_0):
            revert with 0, 'GS026'
        if 1 == address(_185):
            revert with 0, 'GS026'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _186
        s = _185
        s = uint8(_187)
        s = _185
        s = _185
        continue 
}

function checkNSignatures(bytes32 arg1, bytes arg2, bytes arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98
    mem[ceil32(ceil32(arg2.length)) + 97] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg3.length] = arg3[all]
    mem[ceil32(ceil32(arg2.length)) + arg3.length + 129] = 0
    if not arg4:
        if arg3.length < 0:
            revert with 0, 'GS020'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < arg4:
            _366 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
            _367 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
            _368 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 162]
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]:
                if 1 == mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]:
                    if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] == msg.sender:
                        if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] <= address(s):
                            revert with 0, 'GS026'
                        mem[0] = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]
                        mem[32] = 2
                        if not address(stor2[mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]].field_0):
                            revert with 0, 'GS026'
                    else:
                        if not approvedHashes[mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]][arg1]:
                            revert with 0, 'GS025'
                        if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] <= address(s):
                            revert with 0, 'GS026'
                        mem[0] = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]
                        mem[32] = 2
                        if not address(stor2[address(mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129])].field_0):
                            revert with 0, 'GS026'
                    if 1 == mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]:
                        revert with 0, 'GS026'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                    continue 
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1] <= 30:
                    _374 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_374 + 32] = arg1
                    mem[_374 + 64] = uint8(_368)
                    mem[_374 + 96] = _366
                    mem[_374 + 128] = _367
                    signer = erecover(arg1, _368 << 248, _366, _367) 
                    mem[_374] = signer
                else:
                    _376 = mem[64]
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = arg1
                    _385 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _387 = sha3(mem[_385 + 32 len mem[_385]])
                    if uint8(_368) < 4:
                        revert with 0, 17
                    mem[_376 + 92] = 0
                    mem[64] = _376 + 124
                    mem[_376 + 124] = _387
                    mem[_376 + 156] = uint8(uint8(_368) - 4)
                    mem[_376 + 188] = _366
                    mem[_376 + 220] = _367
                    signer = erecover(_387, uint8(_368) - 4 << 248, _366, _367) 
                    mem[_376 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(s):
                    revert with 0, 'GS026'
                mem[0] = address(signer)
                mem[32] = 2
                if not address(stor2[address(signer)].field_0):
                    revert with 0, 'GS026'
                if 1 == address(signer):
                    revert with 0, 'GS026'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _367
                s = _366
                s = uint8(_368)
                s = signer
                s = signer
                continue 
            if not arg4:
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] < 0:
                    revert with 0, 'GS021'
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                    revert with 0, 17
                require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 'GS022'
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                    revert with 0, 17
                require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > !mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129]:
                    revert with 0, 17
                require mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] >= 0
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 'GS023'
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                while t < mem[96]:
                    mem[t + mem[64] + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(mem[96]) <= mem[96]:
                    mem[mem[64] + 36] = ceil32(mem[96]) + 96
                    _724 = mem[_367 + ceil32(ceil32(arg2.length)) + 129]
                    mem[ceil32(mem[96]) + mem[64] + 100] = mem[_367 + ceil32(ceil32(arg2.length)) + 129]
                    t = 0
                    while t < _724:
                        mem[t + ceil32(mem[96]) + mem[64] + 132] = mem[_367 + ceil32(ceil32(arg2.length)) + t + 161]
                        t = t + 32
                        continue 
                    if ceil32(_724) <= _724:
                        require ext_code.size(address(_366))
                        staticcall address(_366).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_724) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _959 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_959] == Mask(32, 224, mem[_959])
                        if Mask(32, 224, mem[_959]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                    else:
                        mem[ceil32(mem[96]) + mem[64] + _724 + 132] = 0
                        require ext_code.size(address(_366))
                        staticcall address(_366).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_724) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _967 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_967] == Mask(32, 224, mem[_967])
                        if Mask(32, 224, mem[_967]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                else:
                    mem[mem[64] + mem[96] + 100] = 0
                    mem[mem[64] + 36] = ceil32(mem[96]) + 96
                    _728 = mem[_367 + ceil32(ceil32(arg2.length)) + 129]
                    mem[ceil32(mem[96]) + mem[64] + 100] = mem[_367 + ceil32(ceil32(arg2.length)) + 129]
                    t = 0
                    while t < _728:
                        mem[t + ceil32(mem[96]) + mem[64] + 132] = mem[_367 + ceil32(ceil32(arg2.length)) + t + 161]
                        t = t + 32
                        continue 
                    if ceil32(_728) <= _728:
                        require ext_code.size(address(_366))
                        staticcall address(_366).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_728) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _960 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_960] == Mask(32, 224, mem[_960])
                        if Mask(32, 224, mem[_960]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                    else:
                        mem[ceil32(mem[96]) + mem[64] + _728 + 132] = 0
                        require ext_code.size(address(_366))
                        staticcall address(_366).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_728) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _968 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_968] == Mask(32, 224, mem[_968])
                        if Mask(32, 224, mem[_968]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
            else:
                if arg4 and 65 > -1 / arg4:
                    revert with 0, 17
                if not arg4:
                    revert with 0, 18
                require 65 * arg4 / arg4 == 65
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] < 65 * arg4:
                    revert with 0, 'GS021'
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                    revert with 0, 17
                require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 'GS022'
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                    revert with 0, 17
                require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > !mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129]:
                    revert with 0, 17
                require mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] >= 0
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 'GS023'
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                while t < mem[96]:
                    mem[t + mem[64] + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(mem[96]) <= mem[96]:
                    mem[mem[64] + 36] = ceil32(mem[96]) + 96
                    _723 = mem[_367 + ceil32(ceil32(arg2.length)) + 129]
                    mem[ceil32(mem[96]) + mem[64] + 100] = mem[_367 + ceil32(ceil32(arg2.length)) + 129]
                    t = 0
                    while t < _723:
                        mem[t + ceil32(mem[96]) + mem[64] + 132] = mem[_367 + ceil32(ceil32(arg2.length)) + t + 161]
                        t = t + 32
                        continue 
                    if ceil32(_723) <= _723:
                        require ext_code.size(address(_366))
                        staticcall address(_366).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_723) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _957 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_957] == Mask(32, 224, mem[_957])
                        if Mask(32, 224, mem[_957]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                    else:
                        mem[ceil32(mem[96]) + mem[64] + _723 + 132] = 0
                        require ext_code.size(address(_366))
                        staticcall address(_366).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_723) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _965 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_965] == Mask(32, 224, mem[_965])
                        if Mask(32, 224, mem[_965]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                else:
                    mem[mem[64] + mem[96] + 100] = 0
                    mem[mem[64] + 36] = ceil32(mem[96]) + 96
                    _727 = mem[_367 + ceil32(ceil32(arg2.length)) + 129]
                    mem[ceil32(mem[96]) + mem[64] + 100] = mem[_367 + ceil32(ceil32(arg2.length)) + 129]
                    t = 0
                    while t < _727:
                        mem[t + ceil32(mem[96]) + mem[64] + 132] = mem[_367 + ceil32(ceil32(arg2.length)) + t + 161]
                        t = t + 32
                        continue 
                    if ceil32(_727) <= _727:
                        require ext_code.size(address(_366))
                        staticcall address(_366).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_727) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _958 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_958] == Mask(32, 224, mem[_958])
                        if Mask(32, 224, mem[_958]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                    else:
                        mem[ceil32(mem[96]) + mem[64] + _727 + 132] = 0
                        require ext_code.size(address(_366))
                        staticcall address(_366).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_727) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _966 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_966] == Mask(32, 224, mem[_966])
                        if Mask(32, 224, mem[_966]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
            if address(_366) <= address(s):
                revert with 0, 'GS026'
            mem[0] = address(_366)
            mem[32] = 2
            if not address(stor2[address(_366)].field_0):
                revert with 0, 'GS026'
            if 1 == address(_366):
                revert with 0, 'GS026'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _367
            s = _366
            s = uint8(_368)
            s = _366
            s = _366
            continue 
    else:
        if arg4 and 65 > -1 / arg4:
            revert with 0, 17
        if not arg4:
            revert with 0, 18
        require 65 * arg4 / arg4 == 65
        if arg3.length < 65 * arg4:
            revert with 0, 'GS020'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < arg4:
            _363 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
            _364 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
            _365 = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 162]
            if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]:
                if 1 == mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]:
                    if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] == msg.sender:
                        if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] <= address(s):
                            revert with 0, 'GS026'
                        mem[0] = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]
                        mem[32] = 2
                        if not address(stor2[mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]].field_0):
                            revert with 0, 'GS026'
                    else:
                        if not approvedHashes[mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]][arg1]:
                            revert with 0, 'GS025'
                        if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20] <= address(s):
                            revert with 0, 'GS026'
                        mem[0] = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]
                        mem[32] = 2
                        if not address(stor2[address(mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129])].field_0):
                            revert with 0, 'GS026'
                    if 1 == mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 141 len 20]:
                        revert with 0, 'GS026'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1]
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                    s = mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 129]
                    continue 
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 193 len 1] <= 30:
                    _369 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_369 + 32] = arg1
                    mem[_369 + 64] = uint8(_365)
                    mem[_369 + 96] = _363
                    mem[_369 + 128] = _364
                    signer = erecover(arg1, _365 << 248, _363, _364) 
                    mem[_369] = signer
                else:
                    _371 = mem[64]
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = arg1
                    _380 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _382 = sha3(mem[_380 + 32 len mem[_380]])
                    if uint8(_365) < 4:
                        revert with 0, 17
                    mem[_371 + 92] = 0
                    mem[64] = _371 + 124
                    mem[_371 + 124] = _382
                    mem[_371 + 156] = uint8(uint8(_365) - 4)
                    mem[_371 + 188] = _363
                    mem[_371 + 220] = _364
                    signer = erecover(_382, uint8(_365) - 4 << 248, _363, _364) 
                    mem[_371 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(s):
                    revert with 0, 'GS026'
                mem[0] = address(signer)
                mem[32] = 2
                if not address(stor2[address(signer)].field_0):
                    revert with 0, 'GS026'
                if 1 == address(signer):
                    revert with 0, 'GS026'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _364
                s = _363
                s = uint8(_365)
                s = signer
                s = signer
                continue 
            if not arg4:
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] < 0:
                    revert with 0, 'GS021'
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                    revert with 0, 17
                require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 'GS022'
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                    revert with 0, 17
                require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > !mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129]:
                    revert with 0, 17
                require mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] >= 0
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 'GS023'
                _489 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _493 = mem[96]
                mem[mem[64] + 68] = mem[96]
                t = 0
                while t < _493:
                    mem[t + mem[64] + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(_493) <= _493:
                    mem[_489 + 36] = ceil32(_493) + 96
                    _722 = mem[_364 + ceil32(ceil32(arg2.length)) + 129]
                    mem[ceil32(_493) + _489 + 100] = mem[_364 + ceil32(ceil32(arg2.length)) + 129]
                    t = 0
                    while t < _722:
                        mem[t + ceil32(_493) + _489 + 132] = mem[_364 + ceil32(ceil32(arg2.length)) + t + 161]
                        t = t + 32
                        continue 
                    if ceil32(_722) <= _722:
                        require ext_code.size(address(_363))
                        staticcall address(_363).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(_722) + ceil32(_493) + _489 + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _955 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_955] == Mask(32, 224, mem[_955])
                        if Mask(32, 224, mem[_955]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                    else:
                        mem[ceil32(_493) + _489 + _722 + 132] = 0
                        require ext_code.size(address(_363))
                        staticcall address(_363).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(_722) + ceil32(_493) + _489 + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _963 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_963] == Mask(32, 224, mem[_963])
                        if Mask(32, 224, mem[_963]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                else:
                    mem[_489 + _493 + 100] = 0
                    mem[_489 + 36] = ceil32(_493) + 96
                    _726 = mem[_364 + ceil32(ceil32(arg2.length)) + 129]
                    mem[ceil32(_493) + _489 + 100] = mem[_364 + ceil32(ceil32(arg2.length)) + 129]
                    t = 0
                    while t < _726:
                        mem[t + ceil32(_493) + _489 + 132] = mem[_364 + ceil32(ceil32(arg2.length)) + t + 161]
                        t = t + 32
                        continue 
                    if ceil32(_726) <= _726:
                        require ext_code.size(address(_363))
                        staticcall address(_363).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(_726) + ceil32(_493) + _489 + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _956 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_956] == Mask(32, 224, mem[_956])
                        if Mask(32, 224, mem[_956]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                    else:
                        mem[ceil32(_493) + _489 + _726 + 132] = 0
                        require ext_code.size(address(_363))
                        staticcall address(_363).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(_726) + ceil32(_493) + _489 + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _964 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_964] == Mask(32, 224, mem[_964])
                        if Mask(32, 224, mem[_964]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
            else:
                if arg4 and 65 > -1 / arg4:
                    revert with 0, 17
                if not arg4:
                    revert with 0, 18
                require 65 * arg4 / arg4 == 65
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] < 65 * arg4:
                    revert with 0, 'GS021'
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                    revert with 0, 17
                require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 'GS022'
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] > -33:
                    revert with 0, 17
                require mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 >= mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161]
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 32 > !mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129]:
                    revert with 0, 17
                require mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] >= 0
                if mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + mem[ceil32(ceil32(arg2.length)) + mem[(65 * idx) + ceil32(ceil32(arg2.length)) + 161] + 129] + 32 > mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 'GS023'
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                while t < mem[96]:
                    mem[t + mem[64] + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(mem[96]) <= mem[96]:
                    mem[mem[64] + 36] = ceil32(mem[96]) + 96
                    _721 = mem[_364 + ceil32(ceil32(arg2.length)) + 129]
                    mem[ceil32(mem[96]) + mem[64] + 100] = mem[_364 + ceil32(ceil32(arg2.length)) + 129]
                    t = 0
                    while t < _721:
                        mem[t + ceil32(mem[96]) + mem[64] + 132] = mem[_364 + ceil32(ceil32(arg2.length)) + t + 161]
                        t = t + 32
                        continue 
                    if ceil32(_721) <= _721:
                        require ext_code.size(address(_363))
                        staticcall address(_363).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_721) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _953 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_953] == Mask(32, 224, mem[_953])
                        if Mask(32, 224, mem[_953]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                    else:
                        mem[ceil32(mem[96]) + mem[64] + _721 + 132] = 0
                        require ext_code.size(address(_363))
                        staticcall address(_363).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_721) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _961 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_961] == Mask(32, 224, mem[_961])
                        if Mask(32, 224, mem[_961]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                else:
                    mem[mem[64] + mem[96] + 100] = 0
                    mem[mem[64] + 36] = ceil32(mem[96]) + 96
                    _725 = mem[_364 + ceil32(ceil32(arg2.length)) + 129]
                    mem[ceil32(mem[96]) + mem[64] + 100] = mem[_364 + ceil32(ceil32(arg2.length)) + 129]
                    t = 0
                    while t < _725:
                        mem[t + ceil32(mem[96]) + mem[64] + 132] = mem[_364 + ceil32(ceil32(arg2.length)) + t + 161]
                        t = t + 32
                        continue 
                    if ceil32(_725) <= _725:
                        require ext_code.size(address(_363))
                        staticcall address(_363).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_725) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _954 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_954] == Mask(32, 224, mem[_954])
                        if Mask(32, 224, mem[_954]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
                    else:
                        mem[ceil32(mem[96]) + mem[64] + _725 + 132] = 0
                        require ext_code.size(address(_363))
                        staticcall address(_363).isValidSignature(bytes rg1, bytes rg2) with:
                                gas gas_remaining wei
                               args Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(_725) + ceil32(mem[96]) + 32]), ceil32(mem[96]) + 96
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _962 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_962] == Mask(32, 224, mem[_962])
                        if Mask(32, 224, mem[_962]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'GS024'
            if address(_363) <= address(s):
                revert with 0, 'GS026'
            mem[0] = address(_363)
            mem[32] = 2
            if not address(stor2[address(_363)].field_0):
                revert with 0, 'GS026'
            if 1 == address(_363):
                revert with 0, 'GS026'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _364
            s = _363
            s = uint8(_365)
            s = _363
            s = _363
            continue 
}



}
