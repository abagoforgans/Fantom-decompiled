contract main {




// =====================  Runtime code  =====================


#
#  - getModules()
#  - getModulesPaginated(address arg1, uint256 arg2)
#
const NAME = 'Gnosis Safe'

const VERSION = '1.2.0'


address stor0;
mapping of struct stor1;
mapping of struct stor2;
uint256 stor3;
uint256 threshold;
uint256 nonce;
uint256 domainSeparator;
mapping of uint256 signedMessages;
mapping of uint256 approvedHashes;
uint128 stor6C9A; offset 160
address stor6C9A;
uint256 stor6C9A;

function signedMessages(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return signedMessages[arg1]
}

function approvedHashes(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return approvedHashes[arg1][arg2]
}

function nonce() {
    return nonce
}

function getThreshold() {
    return threshold
}

function domainSeparator() {
    return domainSeparator
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    if 1 == arg1:
        return arg1 != 1
    return bool(stor2[address(arg1)].field_0)
}

function isModuleEnabled(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        return arg1 != 1
    return bool(stor1[address(arg1)].field_0)
}

function approveHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender].field_0:
        revert with 0, 'Only owners can approve a hash'
    approvedHashes[msg.sender][arg1] = 1
    emit ApproveHash(arg1, msg.sender);
}

function _fallback() payable {
    if msg.value > 0:
    if not calldata.size:
    if not address(stor6C9A.field_0):
    call uint256(stor6C9A.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function setFallbackHandler(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    address(stor6C9A.field_0) = arg1
    Mask(96, 0, stor6C9A.field_160) = 0
}

function getOwners() {
    if stor3:
        mem[128 len 32 * stor3] = code.data[14849 len 32 * stor3]
    idx = stor2[1].field_0
    s = 0
    while address(idx) != 1:
        require s < stor3
        mem[(32 * s) + 128] = address(idx)
        mem[0] = address(idx)
        mem[32] = 2
        idx = stor2[address(idx)].field_0
        s = s + 1
        continue 
    mem[(32 * stor3) + 192 len floor32(stor3)] = mem[128 len floor32(stor3)]
    return Array(len=stor3, data=mem[128 len floor32(stor3)], mem[(32 * stor3) + floor32(stor3) + 192 len (32 * stor3) - floor32(stor3)]), 
}

function getMessageHash(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]))
}

function changeMasterCopy(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
    emit ChangedMasterCopy(arg1);
}

function enableModule(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'Invalid module address provided'
    if 1 == arg1:
        revert with 0, 'Invalid module address provided'
    if stor1[address(arg1)].field_0:
        revert with 0, 'Module has already been added'
    stor1[arg1].field_0 = stor1[1].field_0
    stor1[1].field_0 = arg1
    emit EnabledModule(arg1);
}

function disableModule(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg2:
        revert with 0, 'Invalid module address provided'
    if 1 == arg2:
        revert with 0, 'Invalid module address provided'
    if arg2 != stor1[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64496e76616c696420707265764d6f64756c652c206d6f64756c6520706169722070726f76696465,
                    mem[204 len 24]
    stor1[arg1].field_0 = stor1[address(arg2)].field_0
    stor1[address(arg2)].field_0 = 0
    emit DisabledModule(arg2);
}

function changeThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if arg1 > stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                    mem[199 len 29]
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                    mem[200 len 28]
    threshold = arg1
    emit ChangedThreshold(arg1);
}

function signMessage(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    signedMessages[0][0][stor6][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])] = 1
    emit SignMsg(sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])));
}

function getTransactionHash(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = arg10
    mem[ceil32(arg3.length) + 128] = 352
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))
}

function swapOwner(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg3:
        revert with 0, 'dInvalid owner address provided'
    if 1 == arg3:
        revert with 0, 'dInvalid owner address provided'
    if stor2[address(arg3)].field_0:
        revert with 0, 'Address is already an owner'
    if not arg2:
        revert with 0, 'dInvalid owner address provided'
    if 1 == arg2:
        revert with 0, 'dInvalid owner address provided'
    if arg2 != stor2[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e496e76616c696420707265764f776e65722c206f776e657220706169722070726f76696465,
                    mem[202 len 26]
    stor2[arg3].field_0 = stor2[address(arg2)].field_0
    stor2[arg1].field_0 = arg3
    stor2[address(arg2)].field_0 = 0
    emit RemovedOwner(arg2);
    emit AddedOwner(arg3);
}

function encodeTransactionData(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = arg10
    mem[ceil32(arg3.length) + 128] = 352
    return Array(len=66, data=0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0 >> 256, Mask(16, -512, 0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0) << 512), 
}

function addOwnerWithThreshold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'dInvalid owner address provided'
    if 1 == arg1:
        revert with 0, 'dInvalid owner address provided'
    if stor2[address(arg1)].field_0:
        revert with 0, 'Address is already an owner'
    stor2[arg1].field_0 = stor2[1].field_0
    stor2[1].field_0 = arg1
    stor3++
    emit AddedOwner(arg1);
    if arg2 != threshold:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                        mem[208 len 20]
        if arg2 > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                        mem[199 len 29]
        if arg2 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                        mem[200 len 28]
        threshold = arg2
        emit ChangedThreshold(arg2);
}

function execTransactionFromModule(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if 1 == msg.sender:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not stor1[msg.sender].field_0:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not ext_call.success:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        mem[ceil32(arg3.length) + 128] = bool(ext_call.success)
    else:
        require arg4 <= 1
        if arg4 != 1:
            emit ExecutionFromModuleFailure(msg.sender);
            mem[ceil32(arg3.length) + 128] = 0
        else:
            delegate arg1 with:
                 gas gas_remaining wei
                args arg3[all]
            if not delegate.return_code:
                emit ExecutionFromModuleFailure(msg.sender);
            else:
                emit ExecutionFromModuleSuccess(msg.sender);
            mem[ceil32(arg3.length) + 128] = bool(delegate.return_code)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function removeOwner(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if arg3 > stor3 - 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x744e6577206f776e657220636f756e74206e6565647320746f206265206c6172676572207468616e206e6577207468726573686f6c,
                    mem[217 len 11]
    if not arg2:
        revert with 0, 'dInvalid owner address provided'
    if 1 == arg2:
        revert with 0, 'dInvalid owner address provided'
    if arg2 != stor2[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e496e76616c696420707265764f776e65722c206f776e657220706169722070726f76696465,
                    mem[202 len 26]
    stor2[arg1].field_0 = stor2[address(arg2)].field_0
    stor2[address(arg2)].field_0 = 0
    stor3--
    emit RemovedOwner(arg2);
    if arg3 != threshold:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                        mem[208 len 20]
        if arg3 > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                        mem[199 len 29]
        if arg3 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                        mem[200 len 28]
        threshold = arg3
        emit ChangedThreshold(arg3);
}

function requiredTxGas(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        require ext_call.success
    else:
        require arg4 <= 1
        require arg4 == 1
        delegate arg1 with:
             gas gas_remaining wei
            args arg3[all]
        require delegate.return_code
    mem[ceil32(arg3.length) + 160] = 0
    mem[ceil32(arg3.length) + 128] = 32
    mem[64] = ceil32(arg3.length) + 192
    mem[ceil32(arg3.length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 196] = 32
    mem[ceil32(arg3.length) + 228] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 260 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        revert with memory
          from ceil32(arg3.length) + 192
           len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 68
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + 260] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 292 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    revert with memory
      from ceil32(arg3.length) + 192
       len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 100
}

function execTransactionFromModuleReturnData(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if 1 == msg.sender:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not stor1[msg.sender].field_0:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not ext_call.success:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    require arg4 <= 1
    if arg4 == 1:
        delegate arg1 with:
             gas gas_remaining wei
            args arg3[all]
        if not delegate.return_code:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        return bool(delegate.return_code), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    emit ExecutionFromModuleFailure(msg.sender);
    mem[ceil32(arg3.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + return_data.size + 160] = 0
    mem[ceil32(arg3.length) + return_data.size + 256 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]
    if not return_data.size % 32:
        return 0, 
               64,
               return_data.size,
               Mask(8 * return_data.size, -(8 * return_data.size) + 256, ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]) << (8 * return_data.size) - 256
    mem[floor32(return_data.size) + ceil32(arg3.length) + return_data.size + 256] = mem[(2 * floor32(return_data.size)) + ceil32(arg3.length) + 288 len return_data.size % 32]
    return 0, 
           64,
           return_data.size,
           Mask(8 * ceil32(return_data.size), -(8 * ceil32(return_data.size)) + 256, ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]) << (8 * ceil32(return_data.size)) - 256,
           mem[ceil32(arg3.length) + return_data.size + ceil32(return_data.size) + 256 len floor32(return_data.size) + -ceil32(return_data.size) + 32]
}

function setup(address[] arg1, uint256 arg2, address arg3, bytes arg4, address arg5, address arg6, uint256 arg7, address arg8) {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if domainSeparator:
        revert with 0, 'Domain Separator already set!'
    domainSeparator = sha3(0x35aff83d86937d35b32e04f0ddc6ff469290eef2f1b692d8a815c89404d4749, this.address)
    mem[224 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 224] = 0
    if threshold:
        revert with 0, 'Owners have already been setup'
    if arg2 > arg1.length:
        revert with 0, 
                    32,
                    35,
                    0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                    mem[(32 * arg1.length) + 327 len 29]
    if arg2 < 1:
        revert with 0, 
                    32,
                    36,
                    0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                    mem[(32 * arg1.length) + 328 len 28]
    idx = 0
    s = 1
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 236 len 20]:
            revert with 0, 'dInvalid owner address provided'
        if 1 == mem[(32 * idx) + 236 len 20]:
            revert with 0, 'dInvalid owner address provided'
        if stor2[mem[(32 * idx) + 236 len 20]].field_0:
            revert with 0, 'Duplicate owner address provided'
        mem[0] = address(s)
        mem[32] = 2
        stor2[address(s)].field_0 = mem[(32 * idx) + 236 len 20]
        idx = idx + 1
        s = mem[(32 * idx) + 224]
        continue 
    stor2[address((_335 * arg1.length) + 1)].field_0 = 1
    stor2[address((_335 * arg1.length) + 1)].field_8 = 0
    stor3 = arg1.length
    threshold = arg2
    if arg5:
        address(stor6C9A.field_0) = arg5
        Mask(96, 0, stor6C9A.field_160) = 0
    if stor1[1].field_0:
        revert with 0, 
                    32,
                    37,
                    0x4d6f64756c6573206861766520616c7265616479206265656e20696e697469616c697a6500,
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 361 len 27]
    stor1[1].field_0 = 1
    stor1[1].field_8 = 0
    if arg3:
        delegate arg3 with:
             gas gas_remaining wei
            args arg4[all]
        if not delegate.return_code:
            revert with 0, 'Could not finish initialization'
    if arg7 > 0:
        require arg7 >= arg7
        if not arg8:
            if not arg6:
                if 1 < block.gasprice:
                    if not arg7:
                        call tx.origin with:
                             gas 2300 wei
                    else:
                        require arg7 / arg7 == 1
                        call tx.origin with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not arg7:
                        call tx.origin with:
                             gas 2300 wei
                    else:
                        require block.gasprice * arg7 / arg7 == block.gasprice
                        call tx.origin with:
                           value block.gasprice * arg7 wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 
                                32,
                                34,
                                0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865,
                                mem[(32 * arg1.length) + ceil32(arg4.length) + 358 len 30]
            else:
                if not arg7:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = tx.origin
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = 0
                else:
                    require arg7 / arg7 == 1
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = tx.origin
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = arg7
                mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 68
                mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len 28] = address(tx.origin) << 64
                mem[(32 * arg1.length) + ceil32(arg4.length) + 288 len 4] = unknown_0xa9059cbb(?????)
                call arg6.0xa9059cbb with:
                     gas gas_remaining - 10000 wei
                    args mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 288 len -arg4.length + ceil32(arg4.length)] - 4]
                mem[(32 * arg1.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
                else:
                    if 32 != return_data.size:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
                    if not ext_call.success or not mem[(32 * arg1.length) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
        else:
            if not arg6:
                if 1 < block.gasprice:
                    if not arg7:
                        call arg8 with:
                             gas 2300 wei
                    else:
                        require arg7 / arg7 == 1
                        call arg8 with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not arg7:
                        call arg8 with:
                             gas 2300 wei
                    else:
                        require block.gasprice * arg7 / arg7 == block.gasprice
                        call arg8 with:
                           value block.gasprice * arg7 wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 
                                32,
                                34,
                                0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865,
                                mem[(32 * arg1.length) + ceil32(arg4.length) + 358 len 30]
            else:
                if not arg7:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = arg8
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = 0
                else:
                    require arg7 / arg7 == 1
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = arg8
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = arg7
                mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 68
                mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len 28] = address(arg8) << 64
                mem[(32 * arg1.length) + ceil32(arg4.length) + 288 len 4] = unknown_0xa9059cbb(?????)
                call arg6.0xa9059cbb with:
                     gas gas_remaining - 10000 wei
                    args mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 288 len -arg4.length + ceil32(arg4.length)] - 4]
                mem[(32 * arg1.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
                else:
                    if 32 != return_data.size:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
                    if not ext_call.success or not mem[(32 * arg1.length) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
}

function isValidSignature(bytes arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    _7 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 257] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 258] = domainSeparator
    mem[ceil32(arg1.length) + 290] = _7
    mem[ceil32(arg1.length) + 224] = 66
    if not arg2.length:
        if not signedMessages[0][0][stor6][_7]:
            revert with 0, 'Hash not approved'
        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 322] = arg1.length
    mem[ceil32(arg1.length) + 354 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 354] = 0
    mem[64] = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386
    mem[(2 * ceil32(arg1.length)) + 354] = arg2.length
    mem[(2 * ceil32(arg1.length)) + 386 len arg2.length] = arg2[all]
    mem[(2 * ceil32(arg1.length)) + arg2.length + 386] = 0
    if threshold <= 0:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 390] = 32
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 422] = 30
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 454] = 'Threshold needs to be defined!'
    else:
        if not threshold:
            if arg2.length >= 0:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while idx < threshold:
                    _409 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                    _410 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                    _411 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 419]
                    if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]:
                        if 1 == mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]:
                            if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] == msg.sender:
                                if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]
                                mem[32] = 2
                                if not stor2[mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]].field_0:
                                    revert with 0, 'Invalid owner provided'
                            else:
                                if not approvedHashes[mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                    revert with 0, 'Hash has not been approved'
                                if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]
                                mem[32] = 2
                                if not stor2[address(mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386])].field_0:
                                    revert with 0, 'Invalid owner provided'
                            if 1 == mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]:
                                revert with 0, 'Invalid owner provided'
                            idx = idx + 1
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                            continue 
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1] <= 30:
                            _427 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_427 + 32] = sha3(0, 0, domainSeparator, _7)
                            mem[_427 + 64] = uint8(_411)
                            mem[_427 + 96] = _409
                            mem[_427 + 128] = _410
                            signer = erecover(sha3(0, 0, domainSeparator, _7), _411 << 248, _409, _410) 
                            mem[_427] = signer
                        else:
                            _429 = mem[64]
                            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                            mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                            _430 = mem[64]
                            mem[mem[64]] = 60
                            mem[64] = mem[64] + 92
                            _432 = sha3(mem[_430 + 32 len mem[_430]])
                            mem[_429 + 92] = 0
                            mem[64] = _429 + 124
                            mem[_429 + 124] = _432
                            mem[_429 + 156] = uint8(uint8(_411) - 4)
                            mem[_429 + 188] = _409
                            mem[_429 + 220] = _410
                            signer = erecover(_432, uint8(_411) - 4 << 248, _409, _410) 
                            mem[_429 + 92] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = address(signer)
                        mem[32] = 2
                        if not stor2[address(signer)].field_0:
                            revert with 0, 'Invalid owner provided'
                        if 1 == address(signer):
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = _410
                        s = _409
                        s = uint8(_411)
                        s = signer
                        s = signer
                        continue 
                    if not threshold:
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] < 0:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        _539 = mem[64]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _541 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _541:
                            mem[t + mem[64] + 100] = mem[t + ceil32(arg1.length) + 354]
                            t = t + 32
                            continue 
                        if not _541 % 32:
                            mem[mem[64] + 36] = _541 + 96
                            mem[_541 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _800 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _800:
                                mem[t + _541 + mem[64] + 132] = mem[t + (2 * ceil32(arg1.length)) + _410 + 418]
                                t = t + 32
                                continue 
                            if not _800 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _541 + 96, mem[mem[64] + 68 len _800 + _541 + 64]
                            else:
                                mem[floor32(_800) + _541 + mem[64] + 132] = mem[floor32(_800) + _541 + mem[64] + -(_800 % 32) + 164 len _800 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _541 + 96, mem[mem[64] + 68 len floor32(_800) + _541 + 96]
                        else:
                            mem[floor32(_541) + mem[64] + 100] = mem[floor32(_541) + mem[64] + -(_541 % 32) + 132 len _541 % 32]
                            mem[mem[64] + 36] = floor32(_541) + 128
                            mem[floor32(_541) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _809 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _809:
                                mem[t + floor32(_541) + mem[64] + 164] = mem[t + (2 * ceil32(arg1.length)) + _410 + 418]
                                t = t + 32
                                continue 
                            if not _809 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _809 + floor32(_541) + _539 + -mem[64] + 160]
                            else:
                                mem[floor32(_809) + floor32(_541) + _539 + 164] = mem[floor32(_809) + floor32(_541) + _539 + -(_809 % 32) + 196 len _809 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_809) + floor32(_541) + _539 + -mem[64] + 192]
                    else:
                        require 65 * threshold / threshold == 65
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] < 65 * threshold:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        _549 = mem[64]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _551 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _551:
                            mem[t + mem[64] + 100] = mem[t + ceil32(arg1.length) + 354]
                            t = t + 32
                            continue 
                        if not _551 % 32:
                            mem[mem[64] + 36] = _551 + 96
                            mem[_551 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _797 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _797:
                                mem[t + _551 + mem[64] + 132] = mem[t + (2 * ceil32(arg1.length)) + _410 + 418]
                                t = t + 32
                                continue 
                            if not _797 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _551 + 96, mem[mem[64] + 68 len _797 + _551 + 64]
                            else:
                                mem[floor32(_797) + _551 + mem[64] + 132] = mem[floor32(_797) + _551 + mem[64] + -(_797 % 32) + 164 len _797 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _551 + 96, mem[mem[64] + 68 len floor32(_797) + _551 + 96]
                        else:
                            mem[floor32(_551) + mem[64] + 100] = mem[floor32(_551) + mem[64] + -(_551 % 32) + 132 len _551 % 32]
                            mem[mem[64] + 36] = floor32(_551) + 128
                            mem[floor32(_551) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _807 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _807:
                                mem[t + floor32(_551) + mem[64] + 164] = mem[t + (2 * ceil32(arg1.length)) + _410 + 418]
                                t = t + 32
                                continue 
                            if not _807 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _807 + floor32(_551) + _549 + -mem[64] + 160]
                            else:
                                mem[floor32(_807) + floor32(_551) + _549 + 164] = mem[floor32(_807) + floor32(_551) + _549 + -(_807 % 32) + 196 len _807 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_807) + floor32(_551) + _549 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
                    if address(_409) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(_409)
                    mem[32] = 2
                    if not stor2[address(_409)].field_0:
                        revert with 0, 'Invalid owner provided'
                    if 1 == address(_409):
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _410
                    s = _409
                    s = uint8(_411)
                    s = _409
                    s = _409
                    continue 
                return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
        else:
            require 65 * threshold / threshold == 65
            if arg2.length >= 65 * threshold:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while idx < threshold:
                    _406 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                    _407 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                    _408 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 419]
                    if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]:
                        if 1 == mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]:
                            if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] == msg.sender:
                                if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]
                                mem[32] = 2
                                if not stor2[mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]].field_0:
                                    revert with 0, 'Invalid owner provided'
                            else:
                                if not approvedHashes[mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                    revert with 0, 'Hash has not been approved'
                                if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]
                                mem[32] = 2
                                if not stor2[address(mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386])].field_0:
                                    revert with 0, 'Invalid owner provided'
                            if 1 == mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]:
                                revert with 0, 'Invalid owner provided'
                            idx = idx + 1
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                            s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                            continue 
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1] <= 30:
                            _416 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_416 + 32] = sha3(0, 0, domainSeparator, _7)
                            mem[_416 + 64] = uint8(_408)
                            mem[_416 + 96] = _406
                            mem[_416 + 128] = _407
                            signer = erecover(sha3(0, 0, domainSeparator, _7), _408 << 248, _406, _407) 
                            mem[_416] = signer
                        else:
                            _418 = mem[64]
                            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                            mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                            _419 = mem[64]
                            mem[mem[64]] = 60
                            mem[64] = mem[64] + 92
                            _421 = sha3(mem[_419 + 32 len mem[_419]])
                            mem[_418 + 92] = 0
                            mem[64] = _418 + 124
                            mem[_418 + 124] = _421
                            mem[_418 + 156] = uint8(uint8(_408) - 4)
                            mem[_418 + 188] = _406
                            mem[_418 + 220] = _407
                            signer = erecover(_421, uint8(_408) - 4 << 248, _406, _407) 
                            mem[_418 + 92] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = address(signer)
                        mem[32] = 2
                        if not stor2[address(signer)].field_0:
                            revert with 0, 'Invalid owner provided'
                        if 1 == address(signer):
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = _407
                        s = _406
                        s = uint8(_408)
                        s = signer
                        s = signer
                        continue 
                    if not threshold:
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] < 0:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        _534 = mem[64]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _536 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _536:
                            mem[t + mem[64] + 100] = mem[t + ceil32(arg1.length) + 354]
                            t = t + 32
                            continue 
                        if not _536 % 32:
                            mem[mem[64] + 36] = _536 + 96
                            mem[_536 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _407 + 386]
                            _794 = mem[(2 * ceil32(arg1.length)) + _407 + 386]
                            t = 0
                            while t < _794:
                                mem[t + _536 + mem[64] + 132] = mem[t + (2 * ceil32(arg1.length)) + _407 + 418]
                                t = t + 32
                                continue 
                            if not _794 % 32:
                                require ext_code.size(address(_406))
                                staticcall address(_406).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _794 + _536 + _534 + -mem[64] + 128]
                            else:
                                mem[floor32(_794) + _536 + _534 + 132] = mem[floor32(_794) + _536 + _534 + -(_794 % 32) + 164 len _794 % 32]
                                require ext_code.size(address(_406))
                                staticcall address(_406).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_794) + _536 + _534 + -mem[64] + 160]
                        else:
                            mem[floor32(_536) + mem[64] + 100] = mem[floor32(_536) + mem[64] + -(_536 % 32) + 132 len _536 % 32]
                            mem[mem[64] + 36] = floor32(_536) + 128
                            mem[floor32(_536) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _407 + 386]
                            _805 = mem[(2 * ceil32(arg1.length)) + _407 + 386]
                            t = 0
                            while t < _805:
                                mem[t + floor32(_536) + mem[64] + 164] = mem[t + (2 * ceil32(arg1.length)) + _407 + 418]
                                t = t + 32
                                continue 
                            if not _805 % 32:
                                require ext_code.size(address(_406))
                                staticcall address(_406).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _805 + floor32(_536) + _534 + -mem[64] + 160]
                            else:
                                mem[floor32(_805) + floor32(_536) + _534 + 164] = mem[floor32(_805) + floor32(_536) + _534 + -(_805 % 32) + 196 len _805 % 32]
                                require ext_code.size(address(_406))
                                staticcall address(_406).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_805) + floor32(_536) + _534 + -mem[64] + 192]
                    else:
                        require 65 * threshold / threshold == 65
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] < 65 * threshold:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        _544 = mem[64]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _546 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _546:
                            mem[t + mem[64] + 100] = mem[t + ceil32(arg1.length) + 354]
                            t = t + 32
                            continue 
                        if not _546 % 32:
                            mem[mem[64] + 36] = _546 + 96
                            mem[_546 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _407 + 386]
                            _791 = mem[(2 * ceil32(arg1.length)) + _407 + 386]
                            t = 0
                            while t < _791:
                                mem[t + _546 + mem[64] + 132] = mem[t + (2 * ceil32(arg1.length)) + _407 + 418]
                                t = t + 32
                                continue 
                            if not _791 % 32:
                                require ext_code.size(address(_406))
                                staticcall address(_406).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _546 + 96, mem[mem[64] + 68 len _791 + _546 + 64]
                            else:
                                mem[floor32(_791) + _546 + mem[64] + 132] = mem[floor32(_791) + _546 + mem[64] + -(_791 % 32) + 164 len _791 % 32]
                                require ext_code.size(address(_406))
                                staticcall address(_406).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _546 + 96, mem[mem[64] + 68 len floor32(_791) + _546 + 96]
                        else:
                            mem[floor32(_546) + mem[64] + 100] = mem[floor32(_546) + mem[64] + -(_546 % 32) + 132 len _546 % 32]
                            mem[mem[64] + 36] = floor32(_546) + 128
                            mem[floor32(_546) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _407 + 386]
                            _803 = mem[(2 * ceil32(arg1.length)) + _407 + 386]
                            t = 0
                            while t < _803:
                                mem[t + floor32(_546) + mem[64] + 164] = mem[t + (2 * ceil32(arg1.length)) + _407 + 418]
                                t = t + 32
                                continue 
                            if not _803 % 32:
                                require ext_code.size(address(_406))
                                staticcall address(_406).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _803 + floor32(_546) + _544 + -mem[64] + 160]
                            else:
                                mem[floor32(_803) + floor32(_546) + _544 + 164] = mem[floor32(_803) + floor32(_546) + _544 + -(_803 % 32) + 196 len _803 % 32]
                                require ext_code.size(address(_406))
                                staticcall address(_406).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_803) + floor32(_546) + _544 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
                    if address(_406) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(_406)
                    mem[32] = 2
                    if not stor2[address(_406)].field_0:
                        revert with 0, 'Invalid owner provided'
                    if 1 == address(_406):
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _407
                    s = _406
                    s = uint8(_408)
                    s = _406
                    s = _406
                    continue 
                return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 390] = 32
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 422] = 25
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 454] = 'Signatures data too short'
    revert with memory
      from (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386
       len ceil32(arg1.length) + 100
}

function execTransaction(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, bytes arg10) payable {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = nonce
    mem[ceil32(arg3.length) + 128] = 352
    _7 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    mem[ceil32(arg3.length) + 544] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 545] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 546] = domainSeparator
    mem[ceil32(arg3.length) + 578] = _7
    mem[ceil32(arg3.length) + 512] = 66
    nonce++
    mem[64] = ceil32(arg3.length) + ceil32(arg10.length) + 642
    mem[ceil32(arg3.length) + 610] = arg10.length
    mem[ceil32(arg3.length) + 642 len arg10.length] = arg10[all]
    mem[ceil32(arg3.length) + arg10.length + 642] = 0
    if threshold <= 0:
        revert with 0, 'Threshold needs to be defined!'
    if not threshold:
        if arg10.length < 0:
            revert with 0, 'Signatures data too short'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < threshold:
            _4527 = mem[(65 * idx) + ceil32(arg3.length) + 642]
            _4528 = mem[(65 * idx) + ceil32(arg3.length) + 674]
            _4529 = mem[(65 * idx) + ceil32(arg3.length) + 675]
            if mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]:
                if 1 == mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]:
                    if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] == msg.sender:
                        if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] == msg.sender:
                            if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                            mem[32] = 2
                            if not stor2[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            approvedHashes[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                            if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[(65 * idx) + ceil32(arg3.length) + 642])].field_0:
                                revert with 0, 'Invalid owner provided'
                    else:
                        if not approvedHashes[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                            revert with 0, 'Hash has not been approved'
                        if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] != msg.sender:
                            approvedHashes[address(mem[(65 * idx) + ceil32(arg3.length) + 642])][sha3(0, 0, stor6, _7)] = 0
                        if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[(65 * idx) + ceil32(arg3.length) + 642])].field_0:
                            revert with 0, 'Invalid owner provided'
                    if 1 == mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = mem[(65 * idx) + ceil32(arg3.length) + 674]
                    s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                    s = mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]
                    s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                    s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                    continue 
                if mem[(65 * idx) + ceil32(arg3.length) + 706 len 1] <= 30:
                    _4541 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_4541 + 32] = sha3(0, 0, domainSeparator, _7)
                    mem[_4541 + 64] = uint8(_4529)
                    mem[_4541 + 96] = _4527
                    mem[_4541 + 128] = _4528
                    signer = erecover(sha3(0, 0, domainSeparator, _7), _4529 << 248, _4527, _4528) 
                    mem[_4541] = signer
                else:
                    _4543 = mem[64]
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                    _4544 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _4546 = sha3(mem[_4544 + 32 len mem[_4544]])
                    mem[_4543 + 92] = 0
                    mem[64] = _4543 + 124
                    mem[_4543 + 124] = _4546
                    mem[_4543 + 156] = uint8(uint8(_4529) - 4)
                    mem[_4543 + 188] = _4527
                    mem[_4543 + 220] = _4528
                    signer = erecover(_4546, uint8(_4529) - 4 << 248, _4527, _4528) 
                    mem[_4543 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(signer)
                mem[32] = 2
                if not stor2[address(signer)].field_0:
                    revert with 0, 'Invalid owner provided'
                if 1 == address(signer):
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _4528
                s = _4527
                s = uint8(_4529)
                s = signer
                s = signer
                continue 
            if not threshold:
                if mem[(65 * idx) + ceil32(arg3.length) + 674] < 0:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
                if mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
                require mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] + mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                _4717 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _4719 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _4719:
                    mem[t + mem[64] + 100] = mem[t + ceil32(arg3.length) + 544]
                    t = t + 32
                    continue 
                if not _4719 % 32:
                    mem[_4717 + 36] = _4719 + 96
                    mem[_4719 + _4717 + 100] = mem[ceil32(arg3.length) + _4528 + 642]
                    _9042 = mem[ceil32(arg3.length) + _4528 + 642]
                    t = 0
                    while t < _9042:
                        mem[t + _4719 + _4717 + 132] = mem[t + ceil32(arg3.length) + _4528 + 674]
                        t = t + 32
                        continue 
                    if not _9042 % 32:
                        require ext_code.size(address(_4527))
                        staticcall address(_4527).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9042 + _4719 + _4717 + -mem[64] + 128]
                    else:
                        mem[floor32(_9042) + _4719 + _4717 + 132] = mem[floor32(_9042) + _4719 + _4717 + -(_9042 % 32) + 164 len _9042 % 32]
                        require ext_code.size(address(_4527))
                        staticcall address(_4527).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(_9042) + _4719 + _4717 + -mem[64] + 160]
                else:
                    mem[floor32(_4719) + _4717 + 100] = mem[floor32(_4719) + _4717 + -(_4719 % 32) + 132 len _4719 % 32]
                    mem[_4717 + 36] = floor32(_4719) + 128
                    mem[floor32(_4719) + _4717 + 132] = mem[ceil32(arg3.length) + _4528 + 642]
                    _9051 = mem[ceil32(arg3.length) + _4528 + 642]
                    t = 0
                    while t < _9051:
                        mem[t + floor32(_4719) + _4717 + 164] = mem[t + ceil32(arg3.length) + _4528 + 674]
                        t = t + 32
                        continue 
                    if not _9051 % 32:
                        require ext_code.size(address(_4527))
                        staticcall address(_4527).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9051 + floor32(_4719) + _4717 + -mem[64] + 160]
                    else:
                        mem[floor32(_9051) + floor32(_4719) + _4717 + 164] = mem[floor32(_9051) + floor32(_4719) + _4717 + -(_9051 % 32) + 196 len _9051 % 32]
                        require ext_code.size(address(_4527))
                        staticcall address(_4527).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(_9051) + floor32(_4719) + _4717 + -mem[64] + 192]
            else:
                require 65 * threshold / threshold == 65
                if mem[(65 * idx) + ceil32(arg3.length) + 674] < 65 * threshold:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
                if mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
                require mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] + mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                _4727 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _4729 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _4729:
                    mem[t + mem[64] + 100] = mem[t + ceil32(arg3.length) + 544]
                    t = t + 32
                    continue 
                if not _4729 % 32:
                    mem[_4727 + 36] = _4729 + 96
                    mem[_4729 + _4727 + 100] = mem[ceil32(arg3.length) + _4528 + 642]
                    _9039 = mem[ceil32(arg3.length) + _4528 + 642]
                    t = 0
                    while t < _9039:
                        mem[t + _4729 + _4727 + 132] = mem[t + ceil32(arg3.length) + _4528 + 674]
                        t = t + 32
                        continue 
                    if not _9039 % 32:
                        require ext_code.size(address(_4527))
                        staticcall address(_4527).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9039 + _4729 + _4727 + -mem[64] + 128]
                    else:
                        mem[floor32(_9039) + _4729 + _4727 + 132] = mem[floor32(_9039) + _4729 + _4727 + -(_9039 % 32) + 164 len _9039 % 32]
                        require ext_code.size(address(_4527))
                        staticcall address(_4527).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(_9039) + _4729 + _4727 + -mem[64] + 160]
                else:
                    mem[floor32(_4729) + _4727 + 100] = mem[floor32(_4729) + _4727 + -(_4729 % 32) + 132 len _4729 % 32]
                    mem[_4727 + 36] = floor32(_4729) + 128
                    mem[floor32(_4729) + _4727 + 132] = mem[ceil32(arg3.length) + _4528 + 642]
                    _9049 = mem[ceil32(arg3.length) + _4528 + 642]
                    t = 0
                    while t < _9049:
                        mem[t + floor32(_4729) + _4727 + 164] = mem[t + ceil32(arg3.length) + _4528 + 674]
                        t = t + 32
                        continue 
                    if not _9049 % 32:
                        require ext_code.size(address(_4527))
                        staticcall address(_4527).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9049 + floor32(_4729) + _4727 + -mem[64] + 160]
                    else:
                        mem[floor32(_9049) + floor32(_4729) + _4727 + 164] = mem[floor32(_9049) + floor32(_4729) + _4727 + -(_9049 % 32) + 196 len _9049 % 32]
                        require ext_code.size(address(_4527))
                        staticcall address(_4527).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(_9049) + floor32(_4729) + _4727 + -mem[64] + 192]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
            if address(_4527) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(_4527)
            mem[32] = 2
            if not stor2[address(_4527)].field_0:
                revert with 0, 'Invalid owner provided'
            if 1 == address(_4527):
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _4528
            s = _4527
            s = uint8(_4529)
            s = _4527
            s = _4527
            continue 
        if 64 * arg5 / 63 >= arg5 + 2500:
            if gas_remaining < (64 * arg5 / 63) + 500:
                revert with 0, 
                            32,
                            42,
                            0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                            mem[mem[64] + 110 len 22]
            _4568 = mem[64]
            mem[64] = mem[64] + ceil32(arg3.length) + 32
            mem[_4568] = arg3.length
            mem[_4568 + 32 len arg3.length] = arg3[all]
            mem[_4568 + arg3.length + 32] = 0
            require arg4 <= 1
            if 0 == arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 2500 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5105 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5106 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5106 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5106 + 36 len mem[_5106] - 4]
                                    mem[_5105 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5105 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5105 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5105 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5105 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5311 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5312 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5312 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5312 + 36 len mem[_5312] - 4]
                                    mem[_5311 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5311 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5311 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5311 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5311 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5110 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5111 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5111 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5111 + 36 len mem[_5111] - 4]
                                    mem[_5110 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5110 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5110 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5110 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5110 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5318 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5319 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5319 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5319 + 36 len mem[_5319] - 4]
                                    mem[_5318 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5318 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5318 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5318 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5318 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5095 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5096 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5096 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5096 + 36 len mem[_5096] - 4]
                                    mem[_5095 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5095 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5095 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5095 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5095 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5297 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5298 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5298 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5298 + 36 len mem[_5298] - 4]
                                    mem[_5297 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5297 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5297 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5297 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5297 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5100 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5101 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5101 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5101 + 36 len mem[_5101] - 4]
                                    mem[_5100 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5100 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5100 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5100 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5100 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5304 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5305 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5305 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5305 + 36 len mem[_5305] - 4]
                                    mem[_5304 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5304 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5304 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5304 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5304 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return 0
                delegate arg1 with:
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5589 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5590 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5590 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5590 + 36 len mem[_5590] - 4]
                                mem[_5589 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5589 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5589 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5589 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5589 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5896 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _5897 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5897 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5897 + 36 len mem[_5897] - 4]
                                mem[_5896 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5896 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5896 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5896 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5896 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5594 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5595 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5595 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5595 + 36 len mem[_5595] - 4]
                                mem[_5594 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5594 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5594 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5594 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5594 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5903 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _5904 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5904 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5904 + 36 len mem[_5904] - 4]
                                mem[_5903 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5903 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5903 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5903 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5903 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5125 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5126 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5126 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5126 + 36 len mem[_5126] - 4]
                                    mem[_5125 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5125 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5125 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5125 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5125 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5339 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5340 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5340 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5340 + 36 len mem[_5340] - 4]
                                    mem[_5339 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5339 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5339 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5339 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5339 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5130 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5131 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5131 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5131 + 36 len mem[_5131] - 4]
                                    mem[_5130 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5130 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5130 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5130 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5130 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5346 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5347 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5347 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5347 + 36 len mem[_5347] - 4]
                                    mem[_5346 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5346 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5346 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5346 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5346 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5115 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5116 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5116 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5116 + 36 len mem[_5116] - 4]
                                    mem[_5115 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5115 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5115 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5115 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5115 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5325 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5326 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5326 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5326 + 36 len mem[_5326] - 4]
                                    mem[_5325 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5325 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5325 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5325 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5325 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5120 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5121 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5121 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5121 + 36 len mem[_5121] - 4]
                                    mem[_5120 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5120 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5120 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5120 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5120 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5332 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5333 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5333 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5333 + 36 len mem[_5333] - 4]
                                    mem[_5332 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5332 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5332 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5332 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5332 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5627 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5628 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5628 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5628 + 36 len mem[_5628] - 4]
                                mem[_5627 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5627 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5627 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5627 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5627 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5930 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _5931 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5931 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5931 + 36 len mem[_5931] - 4]
                                mem[_5930 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5930 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5930 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5930 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5930 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5632 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5633 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5633 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5633 + 36 len mem[_5633] - 4]
                                mem[_5632 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5632 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5632 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5632 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5632 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5937 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _5938 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5938 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5938 + 36 len mem[_5938] - 4]
                                mem[_5937 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5937 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5937 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5937 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5937 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
        else:
            if gas_remaining < arg5 + 3000:
                revert with 0, 
                            32,
                            42,
                            0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                            mem[mem[64] + 110 len 22]
            _4571 = mem[64]
            mem[64] = mem[64] + ceil32(arg3.length) + 32
            mem[_4571] = arg3.length
            mem[_4571 + 32 len arg3.length] = arg3[all]
            mem[_4571 + arg3.length + 32] = 0
            require arg4 <= 1
            if 0 == arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 2500 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5145 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5146 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5146 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5146 + 36 len mem[_5146] - 4]
                                    mem[_5145 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5145 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5145 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5145 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5145 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5367 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5368 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5368 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5368 + 36 len mem[_5368] - 4]
                                    mem[_5367 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5367 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5367 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5367 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5367 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5150 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5151 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5151 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5151 + 36 len mem[_5151] - 4]
                                    mem[_5150 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5150 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5150 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5150 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5150 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5374 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5375 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5375 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5375 + 36 len mem[_5375] - 4]
                                    mem[_5374 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5374 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5374 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5374 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5374 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5135 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5136 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5136 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5136 + 36 len mem[_5136] - 4]
                                    mem[_5135 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5135 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5135 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5135 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5135 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5353 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5354 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5354 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5354 + 36 len mem[_5354] - 4]
                                    mem[_5353 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5353 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5353 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5353 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5353 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5140 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5141 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5141 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5141 + 36 len mem[_5141] - 4]
                                    mem[_5140 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5140 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5140 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5140 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5140 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5360 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5361 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5361 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5361 + 36 len mem[_5361] - 4]
                                    mem[_5360 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5360 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5360 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5360 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5360 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return 0
                delegate arg1 with:
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5665 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5666 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5666 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5666 + 36 len mem[_5666] - 4]
                                mem[_5665 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5665 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5665 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5665 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5665 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5964 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _5965 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5965 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5965 + 36 len mem[_5965] - 4]
                                mem[_5964 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5964 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5964 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5964 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5964 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5670 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5671 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5671 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5671 + 36 len mem[_5671] - 4]
                                mem[_5670 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5670 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5670 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5670 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5670 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5971 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _5972 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5972 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5972 + 36 len mem[_5972] - 4]
                                mem[_5971 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5971 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5971 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5971 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5971 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5165 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5166 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5166 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5166 + 36 len mem[_5166] - 4]
                                    mem[_5165 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5165 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5165 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5165 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5165 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5395 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5396 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5396 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5396 + 36 len mem[_5396] - 4]
                                    mem[_5395 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5395 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5395 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5395 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5395 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5170 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5171 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5171 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5171 + 36 len mem[_5171] - 4]
                                    mem[_5170 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5170 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5170 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5170 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5170 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5402 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5403 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5403 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5403 + 36 len mem[_5403] - 4]
                                    mem[_5402 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5402 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5402 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5402 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5402 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5155 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5156 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5156 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5156 + 36 len mem[_5156] - 4]
                                    mem[_5155 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5155 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5155 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5155 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5155 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5381 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5382 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5382 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5382 + 36 len mem[_5382] - 4]
                                    mem[_5381 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5381 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5381 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5381 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5381 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5160 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5161 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5161 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5161 + 36 len mem[_5161] - 4]
                                    mem[_5160 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5160 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5160 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5160 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5160 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5388 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5389 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5389 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5389 + 36 len mem[_5389] - 4]
                                    mem[_5388 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5388 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5388 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5388 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5388 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5703 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5704 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5704 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5704 + 36 len mem[_5704] - 4]
                                mem[_5703 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5703 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5703 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5703 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5703 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5998 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _5999 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5999 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5999 + 36 len mem[_5999] - 4]
                                mem[_5998 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5998 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5998 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5998 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5998 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5708 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5709 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5709 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5709 + 36 len mem[_5709] - 4]
                                mem[_5708 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5708 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5708 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5708 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5708 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _6005 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _6006 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6006 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6006 + 36 len mem[_6006] - 4]
                                mem[_6005 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6005 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6005 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6005 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6005 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
    else:
        require 65 * threshold / threshold == 65
        if arg10.length < 65 * threshold:
            revert with 0, 'Signatures data too short'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < threshold:
            _4524 = mem[(65 * idx) + ceil32(arg3.length) + 642]
            _4525 = mem[(65 * idx) + ceil32(arg3.length) + 674]
            _4526 = mem[(65 * idx) + ceil32(arg3.length) + 675]
            if mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]:
                if 1 == mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]:
                    if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] == msg.sender:
                        if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] == msg.sender:
                            if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                            mem[32] = 2
                            if not stor2[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            approvedHashes[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                            if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[(65 * idx) + ceil32(arg3.length) + 642])].field_0:
                                revert with 0, 'Invalid owner provided'
                    else:
                        if not approvedHashes[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                            revert with 0, 'Hash has not been approved'
                        if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] != msg.sender:
                            approvedHashes[address(mem[(65 * idx) + ceil32(arg3.length) + 642])][sha3(0, 0, stor6, _7)] = 0
                        if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[(65 * idx) + ceil32(arg3.length) + 642])].field_0:
                            revert with 0, 'Invalid owner provided'
                    if 1 == mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = mem[(65 * idx) + ceil32(arg3.length) + 674]
                    s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                    s = mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]
                    s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                    s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                    continue 
                if mem[(65 * idx) + ceil32(arg3.length) + 706 len 1] <= 30:
                    _4530 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_4530 + 32] = sha3(0, 0, domainSeparator, _7)
                    mem[_4530 + 64] = uint8(_4526)
                    mem[_4530 + 96] = _4524
                    mem[_4530 + 128] = _4525
                    signer = erecover(sha3(0, 0, domainSeparator, _7), _4526 << 248, _4524, _4525) 
                    mem[_4530] = signer
                else:
                    _4532 = mem[64]
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                    _4533 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _4535 = sha3(mem[_4533 + 32 len mem[_4533]])
                    mem[_4532 + 92] = 0
                    mem[64] = _4532 + 124
                    mem[_4532 + 124] = _4535
                    mem[_4532 + 156] = uint8(uint8(_4526) - 4)
                    mem[_4532 + 188] = _4524
                    mem[_4532 + 220] = _4525
                    signer = erecover(_4535, uint8(_4526) - 4 << 248, _4524, _4525) 
                    mem[_4532 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(signer)
                mem[32] = 2
                if not stor2[address(signer)].field_0:
                    revert with 0, 'Invalid owner provided'
                if 1 == address(signer):
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _4525
                s = _4524
                s = uint8(_4526)
                s = signer
                s = signer
                continue 
            if not threshold:
                if mem[(65 * idx) + ceil32(arg3.length) + 674] < 0:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
                if mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
                require mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] + mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                _4712 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _4714 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _4714:
                    mem[t + mem[64] + 100] = mem[t + ceil32(arg3.length) + 544]
                    t = t + 32
                    continue 
                if not _4714 % 32:
                    mem[_4712 + 36] = _4714 + 96
                    mem[_4714 + _4712 + 100] = mem[ceil32(arg3.length) + _4525 + 642]
                    _9036 = mem[ceil32(arg3.length) + _4525 + 642]
                    t = 0
                    while t < _9036:
                        mem[t + _4714 + _4712 + 132] = mem[t + ceil32(arg3.length) + _4525 + 674]
                        t = t + 32
                        continue 
                    if not _9036 % 32:
                        require ext_code.size(address(_4524))
                        staticcall address(_4524).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9036 + _4714 + _4712 + -mem[64] + 128]
                    else:
                        mem[floor32(_9036) + _4714 + _4712 + 132] = mem[floor32(_9036) + _4714 + _4712 + -(_9036 % 32) + 164 len _9036 % 32]
                        require ext_code.size(address(_4524))
                        staticcall address(_4524).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(_9036) + _4714 + _4712 + -mem[64] + 160]
                else:
                    mem[floor32(_4714) + _4712 + 100] = mem[floor32(_4714) + _4712 + -(_4714 % 32) + 132 len _4714 % 32]
                    mem[_4712 + 36] = floor32(_4714) + 128
                    mem[floor32(_4714) + _4712 + 132] = mem[ceil32(arg3.length) + _4525 + 642]
                    _9047 = mem[ceil32(arg3.length) + _4525 + 642]
                    t = 0
                    while t < _9047:
                        mem[t + floor32(_4714) + _4712 + 164] = mem[t + ceil32(arg3.length) + _4525 + 674]
                        t = t + 32
                        continue 
                    if not _9047 % 32:
                        require ext_code.size(address(_4524))
                        staticcall address(_4524).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9047 + floor32(_4714) + _4712 + -mem[64] + 160]
                    else:
                        mem[floor32(_9047) + floor32(_4714) + _4712 + 164] = mem[floor32(_9047) + floor32(_4714) + _4712 + -(_9047 % 32) + 196 len _9047 % 32]
                        require ext_code.size(address(_4524))
                        staticcall address(_4524).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(_9047) + floor32(_4714) + _4712 + -mem[64] + 192]
            else:
                require 65 * threshold / threshold == 65
                if mem[(65 * idx) + ceil32(arg3.length) + 674] < 65 * threshold:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
                if mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
                require mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] + mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                _4722 = mem[64]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _4724 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _4724:
                    mem[t + mem[64] + 100] = mem[t + ceil32(arg3.length) + 544]
                    t = t + 32
                    continue 
                if not _4724 % 32:
                    mem[_4722 + 36] = _4724 + 96
                    mem[_4724 + _4722 + 100] = mem[ceil32(arg3.length) + _4525 + 642]
                    _9033 = mem[ceil32(arg3.length) + _4525 + 642]
                    t = 0
                    while t < _9033:
                        mem[t + _4724 + _4722 + 132] = mem[t + ceil32(arg3.length) + _4525 + 674]
                        t = t + 32
                        continue 
                    if not _9033 % 32:
                        require ext_code.size(address(_4524))
                        staticcall address(_4524).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9033 + _4724 + _4722 + -mem[64] + 128]
                    else:
                        mem[floor32(_9033) + _4724 + _4722 + 132] = mem[floor32(_9033) + _4724 + _4722 + -(_9033 % 32) + 164 len _9033 % 32]
                        require ext_code.size(address(_4524))
                        staticcall address(_4524).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(_9033) + _4724 + _4722 + -mem[64] + 160]
                else:
                    mem[floor32(_4724) + _4722 + 100] = mem[floor32(_4724) + _4722 + -(_4724 % 32) + 132 len _4724 % 32]
                    mem[_4722 + 36] = floor32(_4724) + 128
                    mem[floor32(_4724) + _4722 + 132] = mem[ceil32(arg3.length) + _4525 + 642]
                    _9045 = mem[ceil32(arg3.length) + _4525 + 642]
                    t = 0
                    while t < _9045:
                        mem[t + floor32(_4724) + _4722 + 164] = mem[t + ceil32(arg3.length) + _4525 + 674]
                        t = t + 32
                        continue 
                    if not _9045 % 32:
                        require ext_code.size(address(_4524))
                        staticcall address(_4524).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9045 + floor32(_4724) + _4722 + -mem[64] + 160]
                    else:
                        mem[floor32(_9045) + floor32(_4724) + _4722 + 164] = mem[floor32(_9045) + floor32(_4724) + _4722 + -(_9045 % 32) + 196 len _9045 % 32]
                        require ext_code.size(address(_4524))
                        staticcall address(_4524).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(_9045) + floor32(_4724) + _4722 + -mem[64] + 192]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
            if address(_4524) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(_4524)
            mem[32] = 2
            if not stor2[address(_4524)].field_0:
                revert with 0, 'Invalid owner provided'
            if 1 == address(_4524):
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _4525
            s = _4524
            s = uint8(_4526)
            s = _4524
            s = _4524
            continue 
        if 64 * arg5 / 63 >= arg5 + 2500:
            if gas_remaining < (64 * arg5 / 63) + 500:
                revert with 0, 
                            32,
                            42,
                            0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                            mem[mem[64] + 110 len 22]
            _4560 = mem[64]
            mem[64] = mem[64] + ceil32(arg3.length) + 32
            mem[_4560] = arg3.length
            mem[_4560 + 32 len arg3.length] = arg3[all]
            mem[_4560 + arg3.length + 32] = 0
            require arg4 <= 1
            if 0 == arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 2500 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5020 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5021 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5021 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5021 + 36 len mem[_5021] - 4]
                                    mem[_5020 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5020 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5020 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5020 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5020 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5194 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5195 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5195 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5195 + 36 len mem[_5195] - 4]
                                    mem[_5194 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5194 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5194 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5194 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5194 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5025 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5026 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5026 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5026 + 36 len mem[_5026] - 4]
                                    mem[_5025 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5025 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5025 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5025 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5025 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5201 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5202 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5202 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5202 + 36 len mem[_5202] - 4]
                                    mem[_5201 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5201 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5201 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5201 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5201 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5010 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5011 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5011 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5011 + 36 len mem[_5011] - 4]
                                    mem[_5010 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5010 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5010 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5010 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5010 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5180 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5181 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5181 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5181 + 36 len mem[_5181] - 4]
                                    mem[_5180 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5180 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5180 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5180 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5180 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5015 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5016 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5016 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5016 + 36 len mem[_5016] - 4]
                                    mem[_5015 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5015 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5015 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5015 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5015 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5187 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5188 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5188 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5188 + 36 len mem[_5188] - 4]
                                    mem[_5187 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5187 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5187 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5187 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5187 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return 0
                delegate arg1 with:
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5428 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5429 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5429 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5429 + 36 len mem[_5429] - 4]
                                mem[_5428 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5428 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5428 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5428 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5428 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5746 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _5747 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5747 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5747 + 36 len mem[_5747] - 4]
                                mem[_5746 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5746 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5746 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5746 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5746 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5433 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5434 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5434 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5434 + 36 len mem[_5434] - 4]
                                mem[_5433 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5433 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5433 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5433 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5433 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5753 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _5754 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5754 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5754 + 36 len mem[_5754] - 4]
                                mem[_5753 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5753 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5753 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5753 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5753 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5040 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5041 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5041 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5041 + 36 len mem[_5041] - 4]
                                    mem[_5040 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5040 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5040 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5040 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5040 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5222 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5223 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5223 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5223 + 36 len mem[_5223] - 4]
                                    mem[_5222 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5222 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5222 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5222 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5222 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5045 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5046 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5046 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5046 + 36 len mem[_5046] - 4]
                                    mem[_5045 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5045 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5045 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5045 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5045 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5229 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5230 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5230 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5230 + 36 len mem[_5230] - 4]
                                    mem[_5229 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5229 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5229 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5229 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5229 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5030 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5031 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5031 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5031 + 36 len mem[_5031] - 4]
                                    mem[_5030 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5030 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5030 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5030 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5030 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5208 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5209 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5209 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5209 + 36 len mem[_5209] - 4]
                                    mem[_5208 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5208 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5208 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5208 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5208 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5035 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5036 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5036 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5036 + 36 len mem[_5036] - 4]
                                    mem[_5035 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5035 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5035 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5035 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5035 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5215 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5216 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5216 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5216 + 36 len mem[_5216] - 4]
                                    mem[_5215 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5215 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5215 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5215 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5215 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5466 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5467 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5467 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5467 + 36 len mem[_5467] - 4]
                                mem[_5466 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5466 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5466 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5466 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5466 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5780 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _5781 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5781 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5781 + 36 len mem[_5781] - 4]
                                mem[_5780 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5780 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5780 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5780 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5780 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5471 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5472 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5472 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5472 + 36 len mem[_5472] - 4]
                                mem[_5471 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5471 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5471 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5471 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5471 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5787 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _5788 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5788 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5788 + 36 len mem[_5788] - 4]
                                mem[_5787 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5787 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5787 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5787 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5787 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
        else:
            if gas_remaining < arg5 + 3000:
                revert with 0, 
                            32,
                            42,
                            0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                            mem[mem[64] + 110 len 22]
            _4563 = mem[64]
            mem[64] = mem[64] + ceil32(arg3.length) + 32
            mem[_4563] = arg3.length
            mem[_4563 + 32 len arg3.length] = arg3[all]
            mem[_4563 + arg3.length + 32] = 0
            require arg4 <= 1
            if 0 == arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 2500 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5060 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5061 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5061 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5061 + 36 len mem[_5061] - 4]
                                    mem[_5060 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5060 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5060 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5060 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5060 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5250 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5251 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5251 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5251 + 36 len mem[_5251] - 4]
                                    mem[_5250 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5250 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5250 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5250 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5250 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5065 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5066 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5066 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5066 + 36 len mem[_5066] - 4]
                                    mem[_5065 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5065 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5065 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5065 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5065 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5257 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5258 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5258 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5258 + 36 len mem[_5258] - 4]
                                    mem[_5257 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5257 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5257 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5257 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5257 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5050 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5051 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5051 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5051 + 36 len mem[_5051] - 4]
                                    mem[_5050 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5050 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5050 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5050 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5050 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5236 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5237 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5237 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5237 + 36 len mem[_5237] - 4]
                                    mem[_5236 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5236 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5236 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5236 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5236 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5055 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5056 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5056 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5056 + 36 len mem[_5056] - 4]
                                    mem[_5055 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5055 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5055 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5055 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5055 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5243 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5244 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5244 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5244 + 36 len mem[_5244] - 4]
                                    mem[_5243 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5243 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5243 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5243 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5243 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return 0
                delegate arg1 with:
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5504 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5505 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5505 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5505 + 36 len mem[_5505] - 4]
                                mem[_5504 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5504 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5504 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5504 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5504 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5814 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _5815 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5815 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5815 + 36 len mem[_5815] - 4]
                                mem[_5814 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5814 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5814 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5814 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5814 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5509 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5510 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5510 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5510 + 36 len mem[_5510] - 4]
                                mem[_5509 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5509 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5509 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5509 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5509 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5821 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _5822 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5822 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5822 + 36 len mem[_5822] - 4]
                                mem[_5821 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5821 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5821 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5821 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5821 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5080 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5081 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5081 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5081 + 36 len mem[_5081] - 4]
                                    mem[_5080 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5080 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5080 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5080 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5080 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5278 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5279 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5279 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5279 + 36 len mem[_5279] - 4]
                                    mem[_5278 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5278 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5278 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5278 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5278 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5085 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5086 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5086 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5086 + 36 len mem[_5086] - 4]
                                    mem[_5085 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5085 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5085 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5085 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5085 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5285 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5286 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5286 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5286 + 36 len mem[_5286] - 4]
                                    mem[_5285 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5285 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5285 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5285 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5285 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call tx.origin with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call tx.origin with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5070 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5071 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5071 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5071 + 36 len mem[_5071] - 4]
                                    mem[_5070 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5070 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5070 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5070 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5070 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5264 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5265 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5265 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5265 + 36 len mem[_5265] - 4]
                                    mem[_5264 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5264 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5264 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5264 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5264 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg7 * arg6 / arg6 == arg7
                                        call arg9 with:
                                           value arg7 * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require block.gasprice * arg6 / arg6 == block.gasprice
                                        call arg9 with:
                                           value block.gasprice * arg6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                            else:
                                if not arg6:
                                    _5075 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5076 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5076 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5076 + 36 len mem[_5076] - 4]
                                    mem[_5075 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5075 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5075 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5075 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5075 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    _5271 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg7 * arg6
                                    _5272 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5272 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5272 + 36 len mem[_5272] - 4]
                                    mem[_5271 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5271 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5271 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5271 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5271 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5542 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5543 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5543 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5543 + 36 len mem[_5543] - 4]
                                mem[_5542 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5542 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5542 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5542 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5542 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5848 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _5849 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5849 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5849 + 36 len mem[_5849] - 4]
                                mem[_5848 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5848 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5848 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5848 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5848 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _5547 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5548 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5548 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5548 + 36 len mem[_5548] - 4]
                                mem[_5547 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5547 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5547 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5547 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5547 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _5855 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _5856 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5856 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5856 + 36 len mem[_5856] - 4]
                                mem[_5855 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5855 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5855 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5855 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5855 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
    return bool(delegate.return_code)
}



}
