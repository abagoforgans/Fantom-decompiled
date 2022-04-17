contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address owner;
array of struct tokenURIPrefix;
array of struct stor3;
array of uint256 contractURI;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
mapping of address creators;
array of struct fees;
array of uint256 name;
array of uint256 symbol;
uint256 platformFee;
address sub_3740ebb3Address;

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

function platformFee() {
    return platformFee
}

function sub_3740ebb3(?) {
    return sub_3740ebb3Address
}

function fees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < fees[arg1].field_0
    return fees[arg1][arg2].field_0, fees[arg1][arg2].field_256
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
    return bool(stor6[address(arg1)][address(arg2)])
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

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function updatePlatformFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3740ebb3Address = arg1
    emit 0xe57e7c1f: arg1
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

function burn(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != msg.sender:
        if bool(stor6[address(arg1)][address(msg.sender)]) != 1:
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
        mem[128 len 32 * arg1.length] = code.data[17785 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 5)
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
        if bool(stor6[address(arg1)][address(msg.sender)]) != 1:
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
    mem[32] = 8
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 8)
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
    mem[_26 + 32 len 32 * _25] = code.data[17785 len 32 * _25]
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
    while stor3[arg1].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(stor3[arg1].length) + 160
    s = 0
    while ceil32(stor3[arg1].length) + tokenURIPrefix.length + 128 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if tokenURIPrefix.length + stor3[arg1].length:
        mem[ceil32(stor3[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len tokenURIPrefix.length + stor3[arg1].length] = code.data[17785 len tokenURIPrefix.length + stor3[arg1].length]
    idx = 0
    s = 0
    while idx < tokenURIPrefix.length:
        require idx < tokenURIPrefix.length
        require s < tokenURIPrefix.length + stor3[arg1].length
        mem[s + ceil32(stor3[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = tokenURIPrefix.length
    while idx < stor3[arg1].length:
        require idx < stor3[arg1].length
        require s < tokenURIPrefix.length + stor3[arg1].length
        mem[s + ceil32(stor3[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=tokenURIPrefix.length + stor3[arg1].length, data=mem[ceil32(stor3[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len floor32(tokenURIPrefix.length + stor3[arg1].length + 31)]), 
}

function getFeeRecipients(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 8
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 8)
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
    mem[_26 + 32 len 32 * _25] = code.data[17785 len 32 * _25]
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
    if arg1 != msg.sender:
        if bool(stor6[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        require cd[((32 * idx) + arg4 + 36)] <= balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)]
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
        require cd[((32 * idx) + arg4 + 36)] + balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] >= cd[((32 * idx) + arg4 + 36)]
        mem[0] = arg2
        mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 5)
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
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'contract returned an unknown value from onERC1155BatchReceived'
}

function mint(uint256 arg1, address arg2, uint256[] arg3, uint256 arg4, string arg5) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    require arg2 + (64 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size - s >= 64
        _399 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_399] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_399 + 32] = cd[(s + 32)]
        mem[t] = _399
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    _400 = mem[64]
    require mem[64] + ceil32(arg4.length) + 32 <= test266151307() and mem[64] + ceil32(arg4.length) + 32 >= mem[64]
    mem[64] = mem[64] + ceil32(arg4.length) + 32
    mem[_400] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[_400 + 32 len arg4.length] = arg4[all]
    mem[_400 + arg4.length + 32] = 0
    if msg.value < platformFee:
        revert with 0, 'Insufficient funds to mint.'
    call sub_3740ebb3Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if creators[arg1]:
        revert with 0, 'Token is already minted'
    if not arg3:
        revert with 0, 'Supply should be positive'
    if arg4.length <= 0:
        revert with 0, 'uri should be set'
    mem[0] = arg1
    mem[32] = 7
    creators[arg1] = msg.sender
    _409 = mem[96]
    _410 = mem[64]
    mem[mem[64]] = mem[96]
    if not _409:
        mem[mem[64] + (32 * _409) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _409) + (32 * mem[96]) + 64
        if not mem[96]:
            _796 = mem[96]
            idx = 0
            while idx < _796:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 8
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 8)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_410]
                mem[(32 * idx) + _410 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_410 + (32 * _409) + 32]
                mem[(32 * idx) + _410 + (32 * _409) + 64] = mem[mem[(32 * idx) + 128] + 32]
                _796 = mem[96]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 3
                _853 = mem[_400]
                mem[0] = sha3(arg1, 3)
                stor3[arg1][].field_0 = Array(len=_853, data=mem[_400 + 32 len _853])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1477 = mem[64]
                mem[mem[64]] = 32
                _1492 = mem[_400]
                mem[mem[64] + 32] = mem[_400]
                mem[mem[64] + 64 len ceil32(_1492)] = mem[_400 + 32 len ceil32(_1492)]
                var97001 = ceil32(_1492)
                if ceil32(_1492) <= _1492:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1492) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1492 + 64] = 0
                    emit URI(mem[mem[64] len _1477 + ceil32(_1492) + -mem[64] + 64], arg1);
            else:
                _810 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _916 = mem[_410]
                mem[mem[64] + 96] = mem[_410]
                idx = 0
                s = _410 + 32
                t = mem[64] + 128
                while idx < _916:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_810 + 64] = (32 * _916) + 128
                _1180 = mem[_410 + (32 * _409) + 32]
                mem[_810 + (32 * _916) + 128] = mem[_410 + (32 * _409) + 32]
                mem[_810 + (32 * _916) + 160 len 32 * _1180] = mem[_410 + (32 * _409) + 64 len 32 * _1180]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _810 + (32 * _916) + (32 * _1180) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 3
                _1439 = mem[_400]
                mem[0] = sha3(arg1, 3)
                stor3[arg1][].field_0 = Array(len=_1439, data=mem[_400 + 32 len _1439])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1713 = mem[64]
                mem[mem[64]] = 32
                _1720 = mem[_400]
                mem[mem[64] + 32] = mem[_400]
                mem[mem[64] + 64 len ceil32(_1720)] = mem[_400 + 32 len ceil32(_1720)]
                if ceil32(_1720) <= _1720:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1720) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1720 + 64] = 0
                    emit URI(mem[mem[64] len _1713 + ceil32(_1720) + -mem[64] + 64], arg1);
        else:
            mem[_410 + (32 * _409) + 64 len 32 * mem[96]] = code.data[17785 len 32 * mem[96]]
            _797 = mem[96]
            idx = 0
            while idx < _797:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 8
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 8)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_410]
                mem[(32 * idx) + _410 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_410 + (32 * _409) + 32]
                mem[(32 * idx) + _410 + (32 * _409) + 64] = mem[mem[(32 * idx) + 128] + 32]
                _797 = mem[96]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 3
                _858 = mem[_400]
                mem[0] = sha3(arg1, 3)
                stor3[arg1][].field_0 = Array(len=_858, data=mem[_400 + 32 len _858])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1479 = mem[64]
                mem[mem[64]] = 32
                _1493 = mem[_400]
                mem[mem[64] + 32] = mem[_400]
                mem[mem[64] + 64 len ceil32(_1493)] = mem[_400 + 32 len ceil32(_1493)]
                var98001 = ceil32(_1493)
                if ceil32(_1493) <= _1493:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1493) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1493 + 64] = 0
                    emit URI(mem[mem[64] len _1479 + ceil32(_1493) + -mem[64] + 64], arg1);
            else:
                _815 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _921 = mem[_410]
                mem[mem[64] + 96] = mem[_410]
                idx = 0
                s = _410 + 32
                t = mem[64] + 128
                while idx < _921:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_815 + 64] = (32 * _921) + 128
                _1181 = mem[_410 + (32 * _409) + 32]
                mem[_815 + (32 * _921) + 128] = mem[_410 + (32 * _409) + 32]
                mem[_815 + (32 * _921) + 160 len 32 * _1181] = mem[_410 + (32 * _409) + 64 len 32 * _1181]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _815 + (32 * _921) + (32 * _1181) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 3
                _1443 = mem[_400]
                mem[0] = sha3(arg1, 3)
                stor3[arg1][].field_0 = Array(len=_1443, data=mem[_400 + 32 len _1443])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1715 = mem[64]
                mem[mem[64]] = 32
                _1721 = mem[_400]
                mem[mem[64] + 32] = mem[_400]
                mem[mem[64] + 64 len ceil32(_1721)] = mem[_400 + 32 len ceil32(_1721)]
                if ceil32(_1721) <= _1721:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1721) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1721 + 64] = 0
                    emit URI(mem[mem[64] len _1715 + ceil32(_1721) + -mem[64] + 64], arg1);
    else:
        mem[mem[64] + 32 len 32 * _409] = code.data[17785 len 32 * _409]
        mem[mem[64] + (32 * _409) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _409) + (32 * mem[96]) + 64
        if not mem[96]:
            _798 = mem[96]
            idx = 0
            while idx < _798:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 8
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 8)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_410]
                mem[(32 * idx) + _410 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_410 + (32 * _409) + 32]
                mem[(32 * idx) + _410 + (32 * _409) + 64] = mem[mem[(32 * idx) + 128] + 32]
                _798 = mem[96]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 3
                _863 = mem[_400]
                mem[0] = sha3(arg1, 3)
                stor3[arg1][].field_0 = Array(len=_863, data=mem[_400 + 32 len _863])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1481 = mem[64]
                mem[mem[64]] = 32
                _1494 = mem[_400]
                mem[mem[64] + 32] = mem[_400]
                mem[mem[64] + 64 len ceil32(_1494)] = mem[_400 + 32 len ceil32(_1494)]
                var98001 = ceil32(_1494)
                if ceil32(_1494) <= _1494:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1494) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1494 + 64] = 0
                    emit URI(mem[mem[64] len _1481 + ceil32(_1494) + -mem[64] + 64], arg1);
            else:
                _820 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _926 = mem[_410]
                mem[mem[64] + 96] = mem[_410]
                idx = 0
                s = _410 + 32
                t = mem[64] + 128
                while idx < _926:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _926) + 128
                _1182 = mem[_410 + (32 * _409) + 32]
                mem[_820 + (32 * _926) + 128] = mem[_410 + (32 * _409) + 32]
                mem[_820 + (32 * _926) + 160 len 32 * _1182] = mem[_410 + (32 * _409) + 64 len 32 * _1182]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _820 + (32 * _926) + (32 * _1182) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 3
                _1447 = mem[_400]
                mem[0] = sha3(arg1, 3)
                stor3[arg1][].field_0 = Array(len=_1447, data=mem[_400 + 32 len _1447])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1717 = mem[64]
                mem[mem[64]] = 32
                _1722 = mem[_400]
                mem[mem[64] + 32] = mem[_400]
                mem[mem[64] + 64 len ceil32(_1722)] = mem[_400 + 32 len ceil32(_1722)]
                if ceil32(_1722) <= _1722:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1722) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1722 + 64] = 0
                    emit URI(mem[mem[64] len _1717 + ceil32(_1722) + -mem[64] + 64], arg1);
        else:
            mem[_410 + (32 * _409) + 64 len 32 * mem[96]] = code.data[17785 len 32 * mem[96]]
            _799 = mem[96]
            idx = 0
            while idx < _799:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 8
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 8)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_410]
                mem[(32 * idx) + _410 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_410 + (32 * _409) + 32]
                mem[(32 * idx) + _410 + (32 * _409) + 64] = mem[mem[(32 * idx) + 128] + 32]
                _799 = mem[96]
                idx = idx + 1
                continue 
            if mem[96] <= 0:
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 3
                _868 = mem[_400]
                mem[0] = sha3(arg1, 3)
                stor3[arg1][].field_0 = Array(len=_868, data=mem[_400 + 32 len _868])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1483 = mem[64]
                mem[mem[64]] = 32
                _1495 = mem[_400]
                mem[mem[64] + 32] = mem[_400]
                mem[mem[64] + 64 len ceil32(_1495)] = mem[_400 + 32 len ceil32(_1495)]
                var99001 = ceil32(_1495)
                if ceil32(_1495) <= _1495:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1495) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1495 + 64] = 0
                    emit URI(mem[mem[64] len _1483 + ceil32(_1495) + -mem[64] + 64], arg1);
            else:
                _825 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _931 = mem[_410]
                mem[mem[64] + 96] = mem[_410]
                idx = 0
                s = _410 + 32
                t = mem[64] + 128
                while idx < _931:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _931) + 128
                _1183 = mem[_410 + (32 * _409) + 32]
                mem[_825 + (32 * _931) + 128] = mem[_410 + (32 * _409) + 32]
                mem[_825 + (32 * _931) + 160 len 32 * _1183] = mem[_410 + (32 * _409) + 64 len 32 * _1183]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _825 + (32 * _931) + (32 * _1183) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg3
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token should exist'
                mem[0] = arg1
                mem[32] = 3
                _1451 = mem[_400]
                mem[0] = sha3(arg1, 3)
                stor3[arg1][].field_0 = Array(len=_1451, data=mem[_400 + 32 len _1451])
                mem[mem[64] + 32] = arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, msg.sender);
                _1719 = mem[64]
                mem[mem[64]] = 32
                _1723 = mem[_400]
                mem[mem[64] + 32] = mem[_400]
                mem[mem[64] + 64 len ceil32(_1723)] = mem[_400 + 32 len ceil32(_1723)]
                if ceil32(_1723) <= _1723:
                    emit URI(string rg1, uint256 rg2):
                             32,
                             mem[mem[64] + 32 len ceil32(_1723) + 32],
                             arg1,
                else:
                    mem[mem[64] + _1723 + 64] = 0
                    emit URI(mem[mem[64] len _1719 + ceil32(_1723) + -mem[64] + 64], arg1);
}



}
