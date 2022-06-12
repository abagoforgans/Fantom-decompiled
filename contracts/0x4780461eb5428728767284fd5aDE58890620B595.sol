contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address owner;
mapping of uint8 stor2;
array of struct tokenURIPrefix;
array of struct stor4;
array of uint256 contractURI;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
mapping of address creators;
array of struct fees;
array of uint256 name;
array of uint256 symbol;
uint256 mintFee;
address sub_2a425b58Address;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function mintFee() {
    return mintFee
}

function sub_2a425b58(?) {
    return sub_2a425b58Address
}

function fees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < fees[arg1].field_0
    return fees[arg1][arg2].field_0, fees[arg1][arg2].field_256
}

function isSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURIPrefix() {
    return tokenURIPrefix[0 len tokenURIPrefix.length].field_0
}

function creators(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creators[arg1]
}

function contractURI() {
    return contractURI[0 len contractURI.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintFee = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setMintFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'address should not be 0x0'
    sub_2a425b58Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceSigner() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function addSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor2[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractURI[] = Array(len=arg1.length, data=arg1[all])
}

function setTokenURIPrefix(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenURIPrefix[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function removeSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(arg1)] = 0
    emit SignerRemoved(arg1);
}

function burn(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party burns.'
    require arg3 <= balanceOf[arg2][address(arg1)]
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[20632 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 6)
        require idx < arg1.length
        mem[(32 * idx) + 128] = balanceOf[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, '_to must be non-zero.'
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
    require arg4 <= balanceOf[arg3][address(arg1)]
    balanceOf[arg3][address(arg1)] -= arg4
    require arg4 + balanceOf[arg3][address(arg2)] >= arg4
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.hash(arg2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
    if not ext_code.hash(arg2):
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'contract returned an unknown value from onERC1155Received'
}

function getFeeBps(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = fees[arg1][idx].field_0
        mem[_28 + 32] = fees[arg1][idx].field_256
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    _26 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            require idx < mem[96]
            require idx < mem[_26]
            mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 32]
            _47 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _59 = mem[_26]
        mem[mem[64] + 32] = mem[_26]
        mem[mem[64] + 64 len 32 * _59] = mem[_26 + 32 len 32 * _59]
        return 32, mem[mem[64] + 32 len (32 * _59) + 32]
    mem[_26 + 32 len 32 * _25] = code.data[20632 len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        require idx < mem[96]
        require idx < mem[_26]
        mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 32]
        _48 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _60 = mem[_26]
    mem[mem[64] + 32] = mem[_26]
    mem[mem[64] + 64 len 32 * _60] = mem[_26 + 32 len 32 * _60]
    return 32, mem[mem[64] + 32 len (32 * _60) + 32]
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 128
    s = 0
    while stor4[arg1].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(stor4[arg1].length) + 160
    s = 0
    while ceil32(stor4[arg1].length) + tokenURIPrefix.length + 128 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if tokenURIPrefix.length + stor4[arg1].length:
        mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len tokenURIPrefix.length + stor4[arg1].length] = code.data[20632 len tokenURIPrefix.length + stor4[arg1].length]
    idx = 0
    s = 0
    while idx < tokenURIPrefix.length:
        require idx < tokenURIPrefix.length
        require s < tokenURIPrefix.length + stor4[arg1].length
        mem[s + ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = tokenURIPrefix.length
    while idx < stor4[arg1].length:
        require idx < stor4[arg1].length
        require s < tokenURIPrefix.length + stor4[arg1].length
        mem[s + ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=tokenURIPrefix.length + stor4[arg1].length, data=mem[ceil32(stor4[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len floor32(tokenURIPrefix.length + stor4[arg1].length + 31)]), 
}

function getFeeRecipients(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = fees[arg1][idx].field_0
        mem[_28 + 32] = fees[arg1][idx].field_256
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    _26 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            require idx < mem[96]
            require idx < mem[_26]
            mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            _47 = mem[96]
            idx = idx + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[_26]
        mem[mem[64] + 32] = mem[_26]
        idx = 0
        s = _26 + 32
        t = mem[64] + 64
        while idx < _59:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _51 + (32 * _59) + -mem[64] + 64
    mem[_26 + 32 len 32 * _25] = code.data[20632 len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        require idx < mem[96]
        require idx < mem[_26]
        mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
        _48 = mem[96]
        idx = idx + 1
        continue 
    _55 = mem[64]
    mem[mem[64]] = 32
    _60 = mem[_26]
    mem[mem[64] + 32] = mem[_26]
    idx = 0
    s = _26 + 32
    t = mem[64] + 64
    while idx < _60:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _55 + (32 * _60) + -mem[64] + 64
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'destination address must be non-zero.'
    if arg3.length != arg4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_ids and _values array lenght must match.'
    if arg1 == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            require cd[((32 * idx) + arg4 + 36)] <= balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)]
            balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
            require cd[((32 * idx) + arg4 + 36)] + balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] >= cd[((32 * idx) + arg4 + 36)]
            mem[0] = arg2
            mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 6)
            balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
            idx = idx + 1
            continue 
        require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg3.length) + 192] = arg4.length
        require arg4.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[(32 * arg3.length) + (32 * arg4.length) + 224] = 0
        emit TransferBatch(Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if ext_code.hash(arg2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if not ext_code.hash(arg2):
        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
        mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196] = msg.sender
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 228] = arg1
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 260] = 160
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 356] = arg3.length
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 292] = (96 * arg3.length) + 192
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 324] = (96 * arg3.length) + (32 * arg4.length) + 224
        mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + 420] = arg5.length
        mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
        if ceil32(arg5.length) > arg5.length:
            mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 452] = 0
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196 len (96 * arg3.length) + (96 * arg4.length) + ceil32(arg5.length) + 256]
    else:
        if bool(stor7[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            require cd[((32 * idx) + arg4 + 36)] <= balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)]
            balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
            require cd[((32 * idx) + arg4 + 36)] + balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] >= cd[((32 * idx) + arg4 + 36)]
            mem[0] = arg2
            mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 6)
            balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
            idx = idx + 1
            continue 
        require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg3.length) + 192] = arg4.length
        require arg4.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[(32 * arg3.length) + (32 * arg4.length) + 224] = 0
        emit TransferBatch(Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if ext_code.hash(arg2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if not ext_code.hash(arg2):
        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
        mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196] = msg.sender
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 228] = arg1
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 260] = 160
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 356] = arg3.length
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 292] = (96 * arg3.length) + 192
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 324] = (96 * arg3.length) + (32 * arg4.length) + 224
        mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + 420] = arg5.length
        mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196 len (96 * arg3.length) + (96 * arg4.length) + ceil32(arg5.length) + 256]
        else:
            mem[(64 * arg3.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 452] = 0
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196 len (96 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'contract returned an unknown value from onERC1155BatchReceived'
}

function mint(uint256 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, address arg5, uint256[] arg6, uint256 arg7, string arg8) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require (32 * arg5.length) + 128 <= test266151307() and (32 * arg5.length) + 128 >= 96
    mem[64] = (32 * arg5.length) + 128
    mem[96] = arg5.length
    require arg5 + (64 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = 128
    while idx < arg5.length:
        require calldata.size - s >= 64
        _509 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_509] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_509 + 32] = cd[(s + 32)]
        mem[t] = _509
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require arg6 == arg6
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    _510 = mem[64]
    require mem[64] + ceil32(arg7.length) + 32 <= test266151307() and mem[64] + ceil32(arg7.length) + 32 >= mem[64]
    mem[64] = mem[64] + ceil32(arg7.length) + 32
    mem[_510] = arg7.length
    require arg7 + arg7.length + 36 <= calldata.size
    mem[_510 + 32 len arg7.length] = arg7[all]
    mem[_510 + arg7.length + 32] = 0
    if msg.value < mintFee:
        revert with 0, 'Insufficient mint fee.'
    if not sub_2a425b58Address:
        revert with 0, 'mintFeeReceiver has not been set.'
    _512 = mem[64]
    mem[mem[64] + 32] = address(this.address)
    mem[mem[64] + 52] = arg1
    _516 = mem[64]
    mem[mem[64]] = 52
    mem[64] = mem[64] + 84
    _518 = sha3(mem[_516 + 32 len mem[_516]])
    mem[_512 + 84] = 0
    mem[64] = _512 + 116
    mem[_512 + 116] = _518
    mem[_512 + 148] = arg2
    mem[_512 + 180] = arg3
    mem[_512 + 212] = arg4
    signer = erecover(_518, arg2 << 248, arg3, arg4) 
    mem[_512 + 84] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Roles: account is the zero address'
    if not stor2[address(signer)]:
        revert with 0, 'signer should sign tokenId'
    if creators[arg1]:
        revert with 0, 'Token is already minted'
    if not arg6:
        revert with 0, 'Supply should be positive'
    if arg7.length <= 0:
        revert with 0, 'uri should be set'
    mem[0] = arg1
    mem[32] = 8
    creators[arg1] = msg.sender
    _533 = mem[96]
    mem[_512 + 116] = mem[96]
    if not _533:
        mem[_512 + (32 * _533) + 148] = mem[96]
        mem[64] = _512 + (32 * _533) + (32 * mem[96]) + 180
        if not mem[96]:
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 9
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_512 + 116]
                mem[(32 * idx) + _512 + 148] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_512 + (32 * _533) + 148]
                mem[(32 * idx) + _512 + (32 * _533) + 180] = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1073 = mem[_510]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1073, data=mem[_510 + 32 len _1073])
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = arg6
                emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                mem[_512 + (32 * _533) + (32 * mem[96]) + 180] = 32
                _1936 = mem[_510]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = mem[_510]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 244 len ceil32(_1936)] = mem[_510 + 32 len ceil32(_1936)]
                var165001 = ceil32(_1936)
                if ceil32(_1936) > _1936:
                    mem[_512 + (32 * _533) + (32 * mem[96]) + _1936 + 244] = 0
                emit URI(string arg1, uint256 arg2):
                         32,
                         mem[_512 + (32 * _533) + (32 * mem[96]) + 212 len ceil32(_1936) + 32],
                         arg1,
            else:
                _1030 = _512 + (32 * _533) + (32 * mem[96]) + 180
                mem[_512 + (32 * _533) + (32 * mem[96]) + 180] = arg1
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = 96
                _1136 = mem[_512 + 116]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 276] = mem[_512 + 116]
                idx = 0
                s = _512 + 148
                t = mem[64] + 128
                while idx < _1136:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _1136) + 128
                _1496 = mem[_512 + (32 * _533) + 148]
                mem[_1030 + (32 * _1136) + 128] = mem[_512 + (32 * _533) + 148]
                mem[_1030 + (32 * _1136) + 160 len 32 * _1496] = mem[_512 + (32 * _533) + 180 len 32 * _1496]
                emit SecondarySaleFees(uint256 arg1, address[] arg2, uint256[] arg3):
                                       mem[mem[64] len _1030 + (32 * _1136) + (32 * _1496) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1851 = mem[_510]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1851, data=mem[_510 + 32 len _1851])
                mem[mem[64] + 32] = arg6
                emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                mem[mem[64]] = 32
                _2324 = mem[_510]
                mem[mem[64] + 32] = mem[_510]
                mem[mem[64] + 64 len ceil32(_2324)] = mem[_510 + 32 len ceil32(_2324)]
                if ceil32(_2324) > _2324:
                    mem[mem[64] + _2324 + 64] = 0
                emit URI(string arg1, uint256 arg2):
                         32,
                         mem[mem[64] + 32 len ceil32(_2324) + 32],
                         arg1,
        else:
            mem[_512 + (32 * _533) + 180 len 32 * mem[96]] = code.data[20632 len 32 * mem[96]]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 9
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_512 + 116]
                mem[(32 * idx) + _512 + 148] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_512 + (32 * _533) + 148]
                mem[(32 * idx) + _512 + (32 * _533) + 180] = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1078 = mem[_510]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1078, data=mem[_510 + 32 len _1078])
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = arg6
                emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                mem[_512 + (32 * _533) + (32 * mem[96]) + 180] = 32
                _1937 = mem[_510]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = mem[_510]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 244 len ceil32(_1937)] = mem[_510 + 32 len ceil32(_1937)]
                var166001 = ceil32(_1937)
                if ceil32(_1937) > _1937:
                    mem[_512 + (32 * _533) + (32 * mem[96]) + _1937 + 244] = 0
                emit URI(string arg1, uint256 arg2):
                         32,
                         mem[_512 + (32 * _533) + (32 * mem[96]) + 212 len ceil32(_1937) + 32],
                         arg1,
            else:
                _1035 = _512 + (32 * _533) + (32 * mem[96]) + 180
                mem[_512 + (32 * _533) + (32 * mem[96]) + 180] = arg1
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = 96
                _1141 = mem[_512 + 116]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 276] = mem[_512 + 116]
                idx = 0
                s = _512 + 148
                t = mem[64] + 128
                while idx < _1141:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _1141) + 128
                _1497 = mem[_512 + (32 * _533) + 148]
                mem[_1035 + (32 * _1141) + 128] = mem[_512 + (32 * _533) + 148]
                mem[_1035 + (32 * _1141) + 160 len 32 * _1497] = mem[_512 + (32 * _533) + 180 len 32 * _1497]
                emit SecondarySaleFees(uint256 arg1, address[] arg2, uint256[] arg3):
                                       mem[mem[64] len _1035 + (32 * _1141) + (32 * _1497) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1855 = mem[_510]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1855, data=mem[_510 + 32 len _1855])
                mem[mem[64] + 32] = arg6
                emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                mem[mem[64]] = 32
                _2325 = mem[_510]
                mem[mem[64] + 32] = mem[_510]
                mem[mem[64] + 64 len ceil32(_2325)] = mem[_510 + 32 len ceil32(_2325)]
                if ceil32(_2325) > _2325:
                    mem[mem[64] + _2325 + 64] = 0
                emit URI(string arg1, uint256 arg2):
                         32,
                         mem[mem[64] + 32 len ceil32(_2325) + 32],
                         arg1,
    else:
        mem[_512 + 148 len 32 * _533] = code.data[20632 len 32 * _533]
        mem[_512 + (32 * _533) + 148] = mem[96]
        mem[64] = _512 + (32 * _533) + (32 * mem[96]) + 180
        if not mem[96]:
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 9
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_512 + 116]
                mem[(32 * idx) + _512 + 148] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_512 + (32 * _533) + 148]
                mem[(32 * idx) + _512 + (32 * _533) + 180] = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1083 = mem[_510]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1083, data=mem[_510 + 32 len _1083])
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = arg6
                emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                mem[_512 + (32 * _533) + (32 * mem[96]) + 180] = 32
                _1938 = mem[_510]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = mem[_510]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 244 len ceil32(_1938)] = mem[_510 + 32 len ceil32(_1938)]
                var166001 = ceil32(_1938)
                if ceil32(_1938) > _1938:
                    mem[_512 + (32 * _533) + (32 * mem[96]) + _1938 + 244] = 0
                emit URI(string arg1, uint256 arg2):
                         32,
                         mem[_512 + (32 * _533) + (32 * mem[96]) + 212 len ceil32(_1938) + 32],
                         arg1,
            else:
                _1040 = _512 + (32 * _533) + (32 * mem[96]) + 180
                mem[_512 + (32 * _533) + (32 * mem[96]) + 180] = arg1
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = 96
                _1146 = mem[_512 + 116]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 276] = mem[_512 + 116]
                idx = 0
                s = _512 + 148
                t = mem[64] + 128
                while idx < _1146:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _1146) + 128
                _1498 = mem[_512 + (32 * _533) + 148]
                mem[_1040 + (32 * _1146) + 128] = mem[_512 + (32 * _533) + 148]
                mem[_1040 + (32 * _1146) + 160 len 32 * _1498] = mem[_512 + (32 * _533) + 180 len 32 * _1498]
                emit SecondarySaleFees(uint256 arg1, address[] arg2, uint256[] arg3):
                                       mem[mem[64] len _1040 + (32 * _1146) + (32 * _1498) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1859 = mem[_510]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1859, data=mem[_510 + 32 len _1859])
                mem[mem[64] + 32] = arg6
                emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                mem[mem[64]] = 32
                _2326 = mem[_510]
                mem[mem[64] + 32] = mem[_510]
                mem[mem[64] + 64 len ceil32(_2326)] = mem[_510 + 32 len ceil32(_2326)]
                if ceil32(_2326) > _2326:
                    mem[mem[64] + _2326 + 64] = 0
                emit URI(string arg1, uint256 arg2):
                         32,
                         mem[mem[64] + 32 len ceil32(_2326) + 32],
                         arg1,
        else:
            mem[_512 + (32 * _533) + 180 len 32 * mem[96]] = code.data[20632 len 32 * mem[96]]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 9
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_512 + 116]
                mem[(32 * idx) + _512 + 148] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_512 + (32 * _533) + 148]
                mem[(32 * idx) + _512 + (32 * _533) + 180] = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1088 = mem[_510]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1088, data=mem[_510 + 32 len _1088])
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = arg6
                emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                mem[_512 + (32 * _533) + (32 * mem[96]) + 180] = 32
                _1939 = mem[_510]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = mem[_510]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 244 len ceil32(_1939)] = mem[_510 + 32 len ceil32(_1939)]
                var167001 = ceil32(_1939)
                if ceil32(_1939) > _1939:
                    mem[_512 + (32 * _533) + (32 * mem[96]) + _1939 + 244] = 0
                emit URI(string arg1, uint256 arg2):
                         32,
                         mem[_512 + (32 * _533) + (32 * mem[96]) + 212 len ceil32(_1939) + 32],
                         arg1,
            else:
                _1045 = _512 + (32 * _533) + (32 * mem[96]) + 180
                mem[_512 + (32 * _533) + (32 * mem[96]) + 180] = arg1
                mem[_512 + (32 * _533) + (32 * mem[96]) + 212] = 96
                _1151 = mem[_512 + 116]
                mem[_512 + (32 * _533) + (32 * mem[96]) + 276] = mem[_512 + 116]
                idx = 0
                s = _512 + 148
                t = mem[64] + 128
                while idx < _1151:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _1151) + 128
                _1499 = mem[_512 + (32 * _533) + 148]
                mem[_1045 + (32 * _1151) + 128] = mem[_512 + (32 * _533) + 148]
                mem[_1045 + (32 * _1151) + 160 len 32 * _1499] = mem[_512 + (32 * _533) + 180 len 32 * _1499]
                emit SecondarySaleFees(uint256 arg1, address[] arg2, uint256[] arg3):
                                       mem[mem[64] len _1045 + (32 * _1151) + (32 * _1499) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 4
                _1863 = mem[_510]
                mem[0] = sha3(arg1, 4)
                stor4[arg1][].field_0 = Array(len=_1863, data=mem[_510 + 32 len _1863])
                mem[mem[64] + 32] = arg6
                emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                _2323 = mem[64]
                mem[mem[64]] = 32
                _2327 = mem[_510]
                mem[mem[64] + 32] = mem[_510]
                mem[mem[64] + 64 len ceil32(_2327)] = mem[_510 + 32 len ceil32(_2327)]
                if ceil32(_2327) <= _2327:
                    emit URI(string arg1, uint256 arg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_2327) + 32],
                             arg1,
                else:
                    mem[mem[64] + _2327 + 64] = 0
                    emit URI(mem[mem[64] len _2323 + ceil32(_2327) + -mem[64] + 64], arg1);
    call sub_2a425b58Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
