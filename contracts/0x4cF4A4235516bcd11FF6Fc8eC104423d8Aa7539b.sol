contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
address owner;
uint256 currentTokenID;
array of uint256 uri;
mapping of address creators;
mapping of uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 platformFee;
address sub_3740ebb3Address;
address stor12;
address stor13;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return balanceOf[address(arg1)][arg2]
}

function name() {
    return name[0 len name.length]
}

function uri(uint256 arg1) {
    return uri[arg1][0 len uri[arg1].length]
}

function platformFee() {
    return platformFee
}

function tokenSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function sub_3740ebb3(?) {
    return sub_3740ebb3Address
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function getCurrentTokenID() {
    return currentTokenID
}

function creators(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(creators[arg1])
}

function _exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(address(creators[arg1]))
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor1[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor12 != arg2:
        if stor13 != arg2:
            return bool(stor1[address(arg1)][address(arg2)])
    return 1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
            return 0
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x544f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    44,
                    0x4e455243313135352362616c616e63654f6642617463683a20494e56414c49445f41525241595f4c454e4754,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 272 len 20]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 0)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + 140 len 20]][mem[(32 * idx) + (32 * arg1.length) + 160]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if stor12 != msg.sender:
            if stor13 != msg.sender:
                if not stor1[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                42,
                                0x734552433131353523736166655472616e7366657246726f6d3a20494e56414c49445f4f50455241544f,
                                mem[ceil32(arg5.length) + 238 len 22]
    if not arg2:
        revert with 0, 
                    32,
                    43,
                    0xfe4552433131353523736166655472616e7366657246726f6d3a20494e56414c49445f524543495049454e,
                    mem[ceil32(arg5.length) + 239 len 21]
    if arg4 > balanceOf[address(arg1)][arg3]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)][arg3] -= arg4
    if arg4 + balanceOf[address(arg2)][arg3] < balanceOf[address(arg2)][arg3]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)][arg3] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        58,
                        0x4545524331313535235f63616c6c6f6e4552433131353552656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                        arg4 % 281474976710656
}

function mint(address arg1, uint256 arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if msg.value < platformFee:
        revert with 0, 'Insufficient funds to mint.'
    if currentTokenID + 1 < currentTokenID:
        revert with 0, 'SafeMath: addition overflow'
    currentTokenID++
    uint256(creators[stor4 + 1]) = msg.sender or Mask(96, 160, uint256(creators[stor4 + 1]))
    if not address(creators[stor4 + 1]):
        revert with 0, '_setTokenURI: Token should exist'
    uri[stor4 + 1][] = Array(len=arg3.length, data=arg3[all])
    if arg3.length:
        mem[ceil32(arg3.length) + 128] = 32
        mem[ceil32(arg3.length) + 160] = arg3.length
        emit URI(string arg1, uint256 arg2):
                 Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                 mem[arg3.length + 160 len (2 * ceil32(arg3.length)) + -arg3.length + 32],
                 currentTokenID + 1,
    if arg2 + balanceOf[address(arg1)][stor4 + 1] < balanceOf[address(arg1)][stor4 + 1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)][stor4 + 1] += arg2
    emit TransferSingle(currentTokenID + 1, arg2, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, currentTokenID + 1, arg2, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        58,
                        0x4545524331313535235f63616c6c6f6e4552433131353552656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                        arg2 % 281474976710656
    totalSupply[stor4 + 1] = arg2
    call sub_3740ebb3Address with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed'
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg1 == msg.sender:
        if not arg2:
            revert with 0, 
                        32,
                        48,
                        0x4845524331313535237361666542617463685472616e7366657246726f6d3a20494e56414c49445f524543495049454e,
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 308 len 16]
        if arg3.length != arg4.length:
            revert with 0, 
                        32,
                        53,
                        0x5245524331313535235f7361666542617463685472616e7366657246726f6d3a20494e56414c49445f4152524159535f4c454e4754,
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 313 len 11]
        idx = 0
        while idx < arg3.length:
            require idx < mem[(32 * arg3.length) + 128]
            _288 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg1), 0)
            _304 = sha3(mem[(32 * idx) + 128], sha3(address(arg1), 0))
            _320 = mem[64]
            mem[64] = mem[64] + 64
            mem[_320] = 30
            mem[_320 + 32] = 'SafeMath: subtraction overflow'
            if _288 > stor[_304]:
                _332 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _332 + 68] = mem[idx + _320 + 32]
                    idx = idx + 32
                    continue 
                mem[_332 + 68] = mem[_332 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _332 + -mem[64] + 100
            require idx < mem[96]
            balanceOf[address(arg1)][mem[(32 * idx) + 128]] = stor[_304] - _288
            require idx < mem[(32 * arg3.length) + 128]
            require idx < mem[96]
            if mem[(32 * idx) + (32 * arg3.length) + 160] + balanceOf[address(arg2)][mem[(32 * idx) + 128]] < balanceOf[address(arg2)][mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg2), 0)
            balanceOf[address(arg2)][mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
            idx = idx + 1
            continue 
        _272 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _274 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _272 + 96] = mem[(32 * arg3.length) + 128]
        _509 = mem[(32 * arg3.length) + 128]
        mem[(32 * _274) + _272 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len (32 * _509) + (32 * _274) + _272 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if ext_code.size(arg2):
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
            _721 = mem[(32 * arg3.length) + 128]
            mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            mem[mem[64] + 132] = (32 * _721) + (32 * mem[96]) + 224
            mem[(32 * _721) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _793 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[(32 * _721) + (32 * mem[96]) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
            if not _793 % 32:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len _793 + (32 * _721) + (32 * mem[96]) + 64]), (32 * mem[96]) + 192, (32 * _721) + (32 * mem[96]) + 224
            else:
                mem[floor32(_793) + (32 * _721) + (32 * mem[96]) + mem[64] + 260] = mem[floor32(_793) + (32 * _721) + (32 * mem[96]) + mem[64] + -(_793 % 32) + 292 len _793 % 32]
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len floor32(_793) + (32 * _721) + (32 * mem[96]) + 96]), (32 * mem[96]) + 192, (32 * _721) + (32 * mem[96]) + 224
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            63,
                            0x5245524331313535235f63616c6c6f6e45524331313535426174636852656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                            uint8((32 * mem[96]) + 192)
    else:
        if stor12 == msg.sender:
            if not arg2:
                revert with 0, 
                            32,
                            48,
                            0x4845524331313535237361666542617463685472616e7366657246726f6d3a20494e56414c49445f524543495049454e,
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 308 len 16]
            if arg3.length != arg4.length:
                revert with 0, 
                            32,
                            53,
                            0x5245524331313535235f7361666542617463685472616e7366657246726f6d3a20494e56414c49445f4152524159535f4c454e4754,
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 313 len 11]
            idx = 0
            while idx < arg3.length:
                require idx < mem[(32 * arg3.length) + 128]
                _291 = mem[(32 * idx) + (32 * arg3.length) + 160]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(arg1), 0)
                _309 = sha3(mem[(32 * idx) + 128], sha3(address(arg1), 0))
                _321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_321] = 30
                mem[_321 + 32] = 'SafeMath: subtraction overflow'
                if _291 > stor[_309]:
                    _335 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _335 + 68] = mem[idx + _321 + 32]
                        idx = idx + 32
                        continue 
                    mem[_335 + 68] = mem[_335 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _335 + -mem[64] + 100
                require idx < mem[96]
                balanceOf[address(arg1)][mem[(32 * idx) + 128]] = stor[_309] - _291
                require idx < mem[(32 * arg3.length) + 128]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg3.length) + 160] + balanceOf[address(arg2)][mem[(32 * idx) + 128]] < balanceOf[address(arg2)][mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(arg2), 0)
                balanceOf[address(arg2)][mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
                idx = idx + 1
                continue 
            _276 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _278 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _276 + 96] = mem[(32 * arg3.length) + 128]
            _513 = mem[(32 * arg3.length) + 128]
            mem[(32 * _278) + _276 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len (32 * _513) + (32 * _278) + _276 + -mem[64] + 128],
                               msg.sender,
                               arg1,
                               arg2,
            if ext_code.size(arg2):
                mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                _641 = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
                _724 = mem[(32 * arg3.length) + 128]
                mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                mem[mem[64] + 132] = (32 * _724) + (32 * mem[96]) + 224
                mem[(32 * _724) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                _796 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                mem[(32 * _724) + (32 * _641) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
                if not _796 % 32:
                    require ext_code.size(arg2)
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 160, mem[mem[64] + 100 len _796 + (32 * _724) + (32 * _641) + 160]
                else:
                    mem[floor32(_796) + (32 * _724) + (32 * _641) + mem[64] + 260] = mem[floor32(_796) + (32 * _724) + (32 * _641) + mem[64] + -(_796 % 32) + 292 len _796 % 32]
                    require ext_code.size(arg2)
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 160, mem[mem[64] + 100 len floor32(_796) + (32 * _724) + (32 * _641) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                63,
                                0x5245524331313535235f63616c6c6f6e45524331313535426174636852656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                                mem[mem[64] + 131 len 1]
        else:
            if stor13 == msg.sender:
                if not arg2:
                    revert with 0, 
                                32,
                                48,
                                0x4845524331313535237361666542617463685472616e7366657246726f6d3a20494e56414c49445f524543495049454e,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 308 len 16]
                if arg3.length != arg4.length:
                    revert with 0, 
                                32,
                                53,
                                0x5245524331313535235f7361666542617463685472616e7366657246726f6d3a20494e56414c49445f4152524159535f4c454e4754,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 313 len 11]
                idx = 0
                while idx < arg3.length:
                    require idx < mem[(32 * arg3.length) + 128]
                    _297 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = sha3(address(arg1), 0)
                    _319 = sha3(mem[(32 * idx) + 128], sha3(address(arg1), 0))
                    _323 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_323] = 30
                    mem[_323 + 32] = 'SafeMath: subtraction overflow'
                    if _297 > stor[_319]:
                        _341 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _341 + 68] = mem[idx + _323 + 32]
                            idx = idx + 32
                            continue 
                        mem[_341 + 68] = mem[_341 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _341 + -mem[64] + 100
                    require idx < mem[96]
                    balanceOf[address(arg1)][mem[(32 * idx) + 128]] = stor[_319] - _297
                    require idx < mem[(32 * arg3.length) + 128]
                    require idx < mem[96]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] + balanceOf[address(arg2)][mem[(32 * idx) + 128]] < balanceOf[address(arg2)][mem[(32 * idx) + 128]]:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = sha3(address(arg2), 0)
                    balanceOf[address(arg2)][mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
                    idx = idx + 1
                    continue 
                _284 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _286 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _284 + 96] = mem[(32 * arg3.length) + 128]
                _521 = mem[(32 * arg3.length) + 128]
                mem[(32 * _286) + _284 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                                   mem[mem[64] len (32 * _521) + (32 * _286) + _284 + -mem[64] + 128],
                                   msg.sender,
                                   arg1,
                                   arg2,
                if ext_code.size(arg2):
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 100] = (32 * mem[96]) + 192
                    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
                    _730 = mem[(32 * arg3.length) + 128]
                    mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    mem[mem[64] + 132] = (32 * _730) + (32 * mem[96]) + 224
                    mem[(32 * _730) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                    _802 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                    mem[(32 * _730) + (32 * mem[96]) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
                    if not _802 % 32:
                        require ext_code.size(arg2)
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len _802 + (32 * _730) + (32 * mem[96]) + 64]), (32 * mem[96]) + 192, (32 * _730) + (32 * mem[96]) + 224
                    else:
                        mem[floor32(_802) + (32 * _730) + (32 * mem[96]) + mem[64] + 260] = mem[floor32(_802) + (32 * _730) + (32 * mem[96]) + mem[64] + -(_802 % 32) + 292 len _802 % 32]
                        require ext_code.size(arg2)
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len floor32(_802) + (32 * _730) + (32 * mem[96]) + 96]), (32 * mem[96]) + 192, (32 * _730) + (32 * mem[96]) + 224
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    63,
                                    0x5245524331313535235f63616c6c6f6e45524331313535426174636852656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                                    uint8((32 * mem[96]) + 192)
            else:
                mem[0] = msg.sender
                mem[32] = sha3(address(arg1), 1)
                if not stor1[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                47,
                                0x4845524331313535237361666542617463685472616e7366657246726f6d3a20494e56414c49445f4f50455241544f,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 307 len 17]
                if not arg2:
                    revert with 0, 
                                32,
                                48,
                                0x4845524331313535237361666542617463685472616e7366657246726f6d3a20494e56414c49445f524543495049454e,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 308 len 16]
                if arg3.length != arg4.length:
                    revert with 0, 
                                32,
                                53,
                                0x5245524331313535235f7361666542617463685472616e7366657246726f6d3a20494e56414c49445f4152524159535f4c454e4754,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 313 len 11]
                idx = 0
                while idx < arg3.length:
                    require idx < mem[(32 * arg3.length) + 128]
                    _294 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = sha3(address(arg1), 0)
                    _314 = sha3(mem[(32 * idx) + 128], sha3(address(arg1), 0))
                    _322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_322] = 30
                    mem[_322 + 32] = 'SafeMath: subtraction overflow'
                    if _294 > stor[_314]:
                        _338 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _338 + 68] = mem[idx + _322 + 32]
                            idx = idx + 32
                            continue 
                        mem[_338 + 68] = mem[_338 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _338 + -mem[64] + 100
                    require idx < mem[96]
                    balanceOf[address(arg1)][mem[(32 * idx) + 128]] = stor[_314] - _294
                    require idx < mem[(32 * arg3.length) + 128]
                    require idx < mem[96]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] + balanceOf[address(arg2)][mem[(32 * idx) + 128]] < balanceOf[address(arg2)][mem[(32 * idx) + 128]]:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = sha3(address(arg2), 0)
                    balanceOf[address(arg2)][mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
                    idx = idx + 1
                    continue 
                _280 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _282 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _280 + 96] = mem[(32 * arg3.length) + 128]
                _517 = mem[(32 * arg3.length) + 128]
                mem[(32 * _282) + _280 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                                   mem[mem[64] len (32 * _517) + (32 * _282) + _280 + -mem[64] + 128],
                                   msg.sender,
                                   arg1,
                                   arg2,
                if ext_code.size(arg2):
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 100] = (32 * mem[96]) + 192
                    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
                    _727 = mem[(32 * arg3.length) + 128]
                    mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    mem[mem[64] + 132] = (32 * _727) + (32 * mem[96]) + 224
                    mem[(32 * _727) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                    _799 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                    mem[(32 * _727) + (32 * mem[96]) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
                    if not _799 % 32:
                        require ext_code.size(arg2)
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len _799 + (32 * _727) + (32 * mem[96]) + 64]), (32 * mem[96]) + 192, (32 * _727) + (32 * mem[96]) + 224
                    else:
                        mem[floor32(_799) + (32 * _727) + (32 * mem[96]) + mem[64] + 260] = mem[floor32(_799) + (32 * _727) + (32 * mem[96]) + mem[64] + -(_799 % 32) + 292 len _799 % 32]
                        require ext_code.size(arg2)
                        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len floor32(_799) + (32 * _727) + (32 * mem[96]) + 96]), (32 * mem[96]) + 192, (32 * _727) + (32 * mem[96]) + 224
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    63,
                                    0x5245524331313535235f63616c6c6f6e45524331313535426174636852656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                                    uint8((32 * mem[96]) + 192)
}



}
