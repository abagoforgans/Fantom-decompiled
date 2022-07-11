contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
address owner;
array of struct baseURI;
mapping of uint8 stor6;
uint256 starCount;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function getNumMinted() payable {
    return starCount
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function owner() payable {
    return owner
}

function starCount() payable {
    return starCount
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor2[address(arg1)][address(arg2)])
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if not stor6[address(arg1)]:
        revert with 0, 'Minter does not exist'
    stor6[address(arg1)] = 0
    emit EventMinterRemoved(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Minter must not be null address'
    if stor6[address(arg1)]:
        revert with 0, 'Minter already added'
    stor6[address(arg1)] = 1
    emit EventMinterAdded(arg1);
}

function isOwnerOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return (1 == balanceOf[arg2][address(arg1)])
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                    mem[205 len 23]
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if arg1.length:
        baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        baseURI.length = 0
        idx = 0
        while baseURI.length + 31 / 32 > idx:
            baseURI[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor6[msg.sender]:
        revert with 0, 'must be minter'
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: caller is not approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[199 len 29]
    if 1 > balanceOf[arg2][address(arg1)]:
        revert with 0, 32, 36, 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[324 len 28], mem[380 len 4]
    balanceOf[arg2][address(arg1)]--
    emit TransferSingle(arg2, 1, msg.sender, arg1, 0);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor6[msg.sender]:
        revert with 0, 'must be minter'
    starCount++
    if not arg1:
        revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[229 len 31]
    if balanceOf[stor7 + 1][address(arg1)] + 1 < balanceOf[stor7 + 1][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor7 + 1][address(arg1)]++
    emit TransferSingle(starCount + 1, 1, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, starCount + 1, 1, 160, 0
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        0
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'rERC1155: ERC1155Receiver rejected token'
    return (starCount + 1)
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
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
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        43,
                        0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 303 len 21]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if arg1 != msg.sender:
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x65455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[ceil32(arg5.length) + 237 len 23]
    mem[ceil32(arg5.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                    mem[ceil32(arg5.length) + 330 len 22],
                    mem[ceil32(arg5.length) + 374 len 10]
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg4)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > starCount:
        revert with 0, 'NFT does not exist'
    if not baseURI.length:
        return ''
    if not arg1:
        mem[192] = uint256(baseURI.field_0)
        idx = 192
        s = 0
        while baseURI.length + 160 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[baseURI.length + 192 len 0] = None
        mem[baseURI.length + 192 len 0] = 0
        mem[baseURI.length + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[baseURI.length + 198] = 32
        mem[baseURI.length + 230] = mem[160]
        mem[baseURI.length + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if not mem[160] % 32:
            return 32, mem[baseURI.length + 230 len mem[160] + 32]
        mem[floor32(mem[160]) + baseURI.length + 262] = mem[floor32(mem[160]) + baseURI.length + -(mem[160] % 32) + 294 len mem[160] % 32]
        return Array(len=mem[160], data=mem[baseURI.length + 262 len floor32(mem[160]) + 32])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            require t - 1 < mem[96]
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _124 = mem[64]
        mem[0] = 5
        mem[mem[64] + 32] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while _124 + baseURI.length > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _248 = mem[96]
        mem[_124 + baseURI.length + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_124 + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        mem[_248 + _124 + baseURI.length + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        _294 = mem[64]
        mem[64] = _248 + _124 + baseURI.length + 37
        mem[_248 + _124 + baseURI.length + 37] = 32
        mem[_248 + _124 + baseURI.length + 69] = mem[_294]
        _302 = mem[_294]
        mem[_248 + _124 + baseURI.length + 101 len ceil32(mem[_294])] = mem[_294 + 32 len ceil32(mem[_294])]
        if not _302 % 32:
            return 32, mem[_248 + _124 + baseURI.length + 69 len _302 + 32]
        mem[floor32(_302) + _248 + _124 + baseURI.length + 101] = mem[floor32(_302) + _248 + _124 + baseURI.length + -(_302 % 32) + 133 len _302 % 32]
        return 32, mem[_248 + _124 + baseURI.length + 69 len floor32(_302) + 64]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        require t - 1 < mem[96]
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _125 = mem[64]
    mem[0] = 5
    mem[mem[64] + 32] = uint256(baseURI.field_0)
    idx = mem[64] + 32
    s = 0
    while _125 + baseURI.length > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _249 = mem[96]
    mem[_125 + baseURI.length + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_125 + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    mem[_249 + _125 + baseURI.length + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    _298 = mem[64]
    mem[64] = _249 + _125 + baseURI.length + 37
    mem[_249 + _125 + baseURI.length + 37] = 32
    mem[_249 + _125 + baseURI.length + 69] = mem[_298]
    _305 = mem[_298]
    mem[_249 + _125 + baseURI.length + 101 len ceil32(mem[_298])] = mem[_298 + 32 len ceil32(mem[_298])]
    if not _305 % 32:
        return 32, mem[_249 + _125 + baseURI.length + 69 len _305 + 32]
    mem[floor32(_305) + _249 + _125 + baseURI.length + 101] = mem[floor32(_305) + _249 + _125 + baseURI.length + -(_305 % 32) + 133 len _305 % 32]
    return 32, mem[_249 + _125 + baseURI.length + 69 len floor32(_305) + 64]
}

function burnBatch(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not stor6[msg.sender]:
        revert with 0, 'must be minter'
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: caller is not approved'
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[(32 * idx) + 128] = 1
            idx = idx + 1
            continue 
        mem[(32 * arg2.length) + 128] = arg2.length
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(64 * arg2.length) + 263 len 29]
        if arg2.length != arg2.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(64 * arg2.length) + 268 len 24]
        mem[64] = (64 * arg2.length) + 192
        mem[(64 * arg2.length) + 160] = 0
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _163 = mem[(32 * idx) + 128]
            _164 = mem[64]
            mem[64] = mem[64] + 96
            mem[_164] = 36
            mem[_164 + 32 len 36] = 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            require idx < mem[(32 * arg2.length) + 128]
            mem[32] = sha3(mem[(32 * idx) + (32 * arg2.length) + 160], 1)
            if _163 <= balanceOf[mem[(32 * idx) + (32 * arg2.length) + 160]][address(arg1)]:
                require idx < mem[(32 * arg2.length) + 128]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + (32 * arg2.length) + 160], 1)
                balanceOf[mem[(32 * idx) + (32 * arg2.length) + 160]][address(arg1)] -= _163
                idx = idx + 1
                continue 
            _183 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 36
            idx = 0
            while idx < 36:
                mem[idx + _183 + 68] = mem[idx + _164 + 32]
                idx = idx + 32
                continue 
            mem[_183 + 100] = mem[_183 + 128 len 4]
            revert with memory
              from mem[64]
               len _183 + -mem[64] + 132
        _155 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
        _157 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[mem[64] + 32] = (32 * _157) + 96
        mem[(32 * _157) + _155 + 96] = mem[96]
        mem[(32 * _157) + _155 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        idx = floor32(mem[96])
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len (32 * mem[96]) + (32 * _157) + _155 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
    else:
        mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[(32 * idx) + 128] = 1
            idx = idx + 1
            continue 
        mem[(32 * arg2.length) + 128] = arg2.length
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(64 * arg2.length) + 263 len 29]
        if arg2.length != arg2.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(64 * arg2.length) + 268 len 24]
        mem[64] = (64 * arg2.length) + 192
        mem[(64 * arg2.length) + 160] = 0
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _166 = mem[(32 * idx) + 128]
            _167 = mem[64]
            mem[64] = mem[64] + 96
            mem[_167] = 36
            mem[_167 + 32 len 36] = 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            require idx < mem[(32 * arg2.length) + 128]
            mem[32] = sha3(mem[(32 * idx) + (32 * arg2.length) + 160], 1)
            if _166 <= balanceOf[mem[(32 * idx) + (32 * arg2.length) + 160]][address(arg1)]:
                require idx < mem[(32 * arg2.length) + 128]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + (32 * arg2.length) + 160], 1)
                balanceOf[mem[(32 * idx) + (32 * arg2.length) + 160]][address(arg1)] -= _166
                idx = idx + 1
                continue 
            _188 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 36
            idx = 0
            while idx < 36:
                mem[idx + _188 + 68] = mem[idx + _167 + 32]
                idx = idx + 32
                continue 
            mem[_188 + 100] = mem[_188 + 128 len 4]
            revert with memory
              from mem[64]
               len _188 + -mem[64] + 132
        _159 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
        _161 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[mem[64] + 32] = (32 * _161) + 96
        mem[(32 * _161) + _159 + 96] = mem[96]
        mem[(32 * _161) + _159 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        idx = floor32(mem[96])
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len (32 * mem[96]) + (32 * _161) + _159 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
}

function mintBatch(address arg1, uint256 arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    if not stor6[msg.sender]:
        revert with 0, 'must be minter'
    require arg2 <= test266151307()
    mem[96] = arg2
    if not arg2:
        require arg2 <= test266151307()
        mem[(32 * arg2) + 128] = arg2
        if not arg2:
            idx = 0
            while idx < mem[96]:
                starCount++
                require idx < mem[96]
                mem[(32 * idx) + 128] = starCount + 1
                require idx < mem[(32 * arg2) + 128]
                mem[(32 * idx) + (32 * arg2) + 160] = 1
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 160] = 0
            if not arg1:
                revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[(64 * arg2) + 293 len 31]
            if mem[96] != mem[(32 * arg2) + 128]:
                revert with 0, 
                            32,
                            40,
                            0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                            mem[(64 * arg2) + 300 len 24]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require idx < mem[(32 * arg2) + 128]
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * arg2) + 160] < mem[(32 * idx) + (32 * arg2) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2) + 160]
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 192] = 64
            mem[(64 * arg2) + 256] = mem[96]
            mem[(64 * arg2) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * arg2) + 224] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + (64 * arg2) + 288] = mem[(32 * arg2) + 128]
            _1420 = mem[(32 * arg2) + 128]
            s = 0
            while mem[96] < 32 * _1420:
                mem[(34 * mem[96]) + (64 * arg2) + 320] = mem[mem[96] + (32 * arg2) + 160]
                s = mem[96] + 32
                continue 
            emit TransferBatch(Array(len=mem[96], data=mem[(64 * arg2) + 288 len (32 * _1420) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96, msg.sender, 0, arg1);
        else:
            mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            idx = 0
            while idx < mem[96]:
                starCount++
                require idx < mem[96]
                mem[(32 * idx) + 128] = starCount + 1
                require idx < mem[(32 * arg2) + 128]
                mem[(32 * idx) + (32 * arg2) + 160] = 1
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 160] = 0
            if not arg1:
                revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[(64 * arg2) + 293 len 31]
            if mem[96] != mem[(32 * arg2) + 128]:
                revert with 0, 
                            32,
                            40,
                            0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                            mem[(64 * arg2) + 300 len 24]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require idx < mem[(32 * arg2) + 128]
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * arg2) + 160] < mem[(32 * idx) + (32 * arg2) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2) + 160]
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 192] = 64
            mem[(64 * arg2) + 256] = mem[96]
            mem[(64 * arg2) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * arg2) + 224] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + (64 * arg2) + 288] = mem[(32 * arg2) + 128]
            _1423 = mem[(32 * arg2) + 128]
            s = 0
            while mem[96] < 32 * _1423:
                mem[(34 * mem[96]) + (64 * arg2) + 320] = mem[mem[96] + (32 * arg2) + 160]
                s = mem[96] + 32
                continue 
            emit TransferBatch(Array(len=mem[96], data=mem[(64 * arg2) + 288 len (32 * _1423) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96, msg.sender, 0, arg1);
    else:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        require arg2 <= test266151307()
        mem[(32 * arg2) + 128] = arg2
        if not arg2:
            idx = 0
            while idx < mem[96]:
                starCount++
                require idx < mem[96]
                mem[(32 * idx) + 128] = starCount + 1
                require idx < mem[(32 * arg2) + 128]
                mem[(32 * idx) + (32 * arg2) + 160] = 1
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 160] = 0
            if not arg1:
                revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[(64 * arg2) + 293 len 31]
            if mem[96] != mem[(32 * arg2) + 128]:
                revert with 0, 
                            32,
                            40,
                            0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                            mem[(64 * arg2) + 300 len 24]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require idx < mem[(32 * arg2) + 128]
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * arg2) + 160] < mem[(32 * idx) + (32 * arg2) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2) + 160]
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 192] = 64
            mem[(64 * arg2) + 256] = mem[96]
            mem[(64 * arg2) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * arg2) + 224] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + (64 * arg2) + 288] = mem[(32 * arg2) + 128]
            _1426 = mem[(32 * arg2) + 128]
            s = 0
            while mem[96] < 32 * _1426:
                mem[(34 * mem[96]) + (64 * arg2) + 320] = mem[mem[96] + (32 * arg2) + 160]
                s = mem[96] + 32
                continue 
            emit TransferBatch(Array(len=mem[96], data=mem[(64 * arg2) + 288 len (32 * _1426) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96, msg.sender, 0, arg1);
        else:
            mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            idx = 0
            while idx < mem[96]:
                starCount++
                require idx < mem[96]
                mem[(32 * idx) + 128] = starCount + 1
                require idx < mem[(32 * arg2) + 128]
                mem[(32 * idx) + (32 * arg2) + 160] = 1
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 160] = 0
            if not arg1:
                revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[(64 * arg2) + 293 len 31]
            if mem[96] != mem[(32 * arg2) + 128]:
                revert with 0, 
                            32,
                            40,
                            0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                            mem[(64 * arg2) + 300 len 24]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require idx < mem[(32 * arg2) + 128]
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * arg2) + 160] < mem[(32 * idx) + (32 * arg2) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2) + 160]
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 192] = 64
            mem[(64 * arg2) + 256] = mem[96]
            mem[(64 * arg2) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * arg2) + 224] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + (64 * arg2) + 288] = mem[(32 * arg2) + 128]
            _1429 = mem[(32 * arg2) + 128]
            s = 0
            while mem[96] < 32 * _1429:
                mem[(34 * mem[96]) + (64 * arg2) + 320] = mem[mem[96] + (32 * arg2) + 160]
                s = mem[96] + 32
                continue 
            emit TransferBatch(Array(len=mem[96], data=mem[(64 * arg2) + 288 len (32 * _1429) + (32 * mem[96]) + 32]), (32 * mem[96]) + 96, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
        mem[(64 * arg2) + 192] = 32
        mem[(64 * arg2) + 224] = mem[96]
        mem[(64 * arg2) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return 32, mem[(64 * arg2) + 224 len (32 * mem[96]) + 32]
    mem[(64 * arg2) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[(64 * arg2) + 196] = msg.sender
    mem[(64 * arg2) + 228] = 0
    mem[(64 * arg2) + 260] = 160
    mem[(64 * arg2) + 356] = mem[96]
    mem[(64 * arg2) + 388 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(64 * arg2) + 292] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + (64 * arg2) + 388] = mem[(32 * arg2) + 128]
    mem[(32 * mem[96]) + (64 * arg2) + 420 len floor32(mem[(32 * arg2) + 128])] = mem[(32 * arg2) + 160 len floor32(mem[(32 * arg2) + 128])]
    mem[(64 * arg2) + 324] = (32 * mem[(32 * arg2) + 128]) + (32 * mem[96]) + 224
    mem[(32 * mem[(32 * arg2) + 128]) + (32 * mem[96]) + (64 * arg2) + 420] = 0
    mem[(32 * mem[(32 * arg2) + 128]) + (32 * mem[96]) + (64 * arg2) + 452 len 0] = None
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * mem[96]) + 192, (32 * mem[(32 * arg2) + 128]) + (32 * mem[96]) + 224, mem[96], mem[(64 * arg2) + 388 len (32 * mem[(32 * arg2) + 128]) + (32 * mem[96]) + 32], 0
    mem[(64 * arg2) + 192] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        Mask(192, 0, (32 * mem[96]) + 192)
        mem[(64 * arg2) + 192] = 32
        mem[(64 * arg2) + 224] = mem[96]
        mem[(64 * arg2) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return 32, mem[(64 * arg2) + 224 len (32 * mem[96]) + 32]
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * mem[96]) + 192)
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * mem[96]) + 192)
    mem[(64 * arg2) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * mem[96]) + 192)
    if mem[(64 * arg2) + ext_call.return_data[0] + 192] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * mem[96]) + 192)
    if ext_call.return_data[0] + mem[(64 * arg2) + ext_call.return_data[0] + 192] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * mem[96]) + 192)
    mem[64] = (64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 224
    if not (64 * arg2) + ext_call.return_data[0] + 192:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[(64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 344 len 12]
    mem[(64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 228] = 32
    mem[(64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 260] = mem[(64 * arg2) + ext_call.return_data[0] + 192]
    if mem[(64 * arg2) + ext_call.return_data[0] + 192]:
        mem[(64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 292] = mem[(64 * arg2) + ext_call.return_data[0] + 224]
        mem[(64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 324 len floor32(mem[(64 * arg2) + ext_call.return_data[0] + 192] - 1)] = mem[(64 * arg2) + ext_call.return_data[0] + 256 len floor32(mem[(64 * arg2) + ext_call.return_data[0] + 192] - 1)]
    if not mem[(64 * arg2) + ext_call.return_data[0] + 192] % 32:
        revert with 0, 
                    32,
                    mem[(64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 260 len mem[(64 * arg2) + ext_call.return_data[0] + 192] + 32]
    mem[floor32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + (64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 292] = mem[floor32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + (64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + -(mem[(64 * arg2) + ext_call.return_data[0] + 192] % 32) + 324 len mem[(64 * arg2) + ext_call.return_data[0] + 192] % 32]
    revert with 0, 
                32,
                mem[(64 * arg2) + ext_call.return_data[0] + 192],
                mem[(64 * arg2) + ext_call.return_data[0] + ceil32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 292 len floor32(mem[(64 * arg2) + ext_call.return_data[0] + 192]) + 32]
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
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
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 300 len 24]
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 297 len 27]
    if arg1 == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _234 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _241 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _242 = mem[64]
            mem[64] = mem[64] + 96
            mem[_242] = 42
            mem[_242 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_234, 1)
            if _241 <= balanceOf[_234][address(arg1)]:
                balanceOf[_234][address(arg1)] -= _241
                if _241 + balanceOf[_234][arg2] < balanceOf[_234][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_234, 1)
                balanceOf[_234][address(arg2)] = _241 + balanceOf[_234][arg2]
                idx = idx + 1
                continue 
            _254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _254 + 68] = mem[idx + _242 + 32]
                idx = idx + 32
                continue 
            mem[_254 + 100] = mem[_254 + 122 len 10]
            revert with memory
              from mem[64]
               len _254 + -mem[64] + 132
        _226 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _228 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _226 + 96] = mem[(32 * arg3.length) + 128]
        _435 = mem[(32 * arg3.length) + 128]
        mem[(32 * _228) + _226 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len (32 * _435) + (32 * _228) + _226 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _608 = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _757 = mem[(32 * arg3.length) + 128]
        mem[(32 * _608) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _757) + (32 * _608) + 224
        mem[(32 * _757) + (32 * _608) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _901 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _757) + (32 * _608) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _901 % 32:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _757) + (32 * _608) + 224, mem[mem[64] + 164 len _901 + (32 * _757) + (32 * _608) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1066 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _1066 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1090 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_1066 + ext_call.return_data[0]]
            _1092 = mem[_1066 + ext_call.return_data[0]]
            if not mem[_1066 + ext_call.return_data[0]]:
                if not mem[_1066 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_1066 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_1066 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1066 + ext_call.return_data[0]]) + mem[64] + -(mem[_1066 + ext_call.return_data[0]] % 32) + 100 len mem[_1066 + ext_call.return_data[0]] % 32]
                revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1092)]
            mem[mem[64] + 68] = mem[_1066 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1092 - 1)] = mem[_1066 + ext_call.return_data[0] + 64 len floor32(_1092 - 1)]
            if not _1092 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1092 + 32]
            mem[floor32(_1092) + mem[64] + 68] = mem[floor32(_1092) + mem[64] + -(_1092 % 32) + 100 len _1092 % 32]
            revert with memory
              from mem[64]
               len floor32(_1092) + _1090 + -mem[64] + 100
        mem[floor32(_901) + (32 * _757) + (32 * _608) + mem[64] + 260] = mem[floor32(_901) + (32 * _757) + (32 * _608) + mem[64] + -(_901 % 32) + 292 len _901 % 32]
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _757) + (32 * _608) + 224, mem[mem[64] + 164 len floor32(_901) + (32 * _757) + (32 * _608) + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1073 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1073 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1109 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1073 + ext_call.return_data[0]]
        _1111 = mem[_1073 + ext_call.return_data[0]]
        if not mem[_1073 + ext_call.return_data[0]]:
            if not mem[_1073 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1073 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1073 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1073 + ext_call.return_data[0]]) + mem[64] + -(mem[_1073 + ext_call.return_data[0]] % 32) + 100 len mem[_1073 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_1073 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1111 - 1)] = mem[_1073 + ext_call.return_data[0] + 64 len floor32(_1111 - 1)]
            if not _1111 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1111 + 32]
            mem[floor32(_1111) + mem[64] + 68] = mem[floor32(_1111) + mem[64] + -(_1111 % 32) + 100 len _1111 % 32]
        revert with memory
          from mem[64]
           len floor32(_1111) + _1109 + -mem[64] + 100
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    50,
                    0x73455243313135353a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 310 len 14]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _236 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _248 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _249 = mem[64]
        mem[64] = mem[64] + 96
        mem[_249] = 42
        mem[_249 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_236, 1)
        if _248 <= balanceOf[_236][address(arg1)]:
            balanceOf[_236][address(arg1)] -= _248
            if _248 + balanceOf[_236][arg2] < balanceOf[_236][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_236, 1)
            balanceOf[_236][address(arg2)] = _248 + balanceOf[_236][arg2]
            idx = idx + 1
            continue 
        _259 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _259 + 68] = mem[idx + _249 + 32]
            idx = idx + 32
            continue 
        mem[_259 + 100] = mem[_259 + 122 len 10]
        revert with memory
          from mem[64]
           len _259 + -mem[64] + 132
    _230 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _232 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _230 + 96] = mem[(32 * arg3.length) + 128]
    _439 = mem[(32 * arg3.length) + 128]
    mem[(32 * _232) + _230 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len (32 * _439) + (32 * _232) + _230 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    _611 = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _760 = mem[(32 * arg3.length) + 128]
    mem[(32 * _611) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _760) + (32 * _611) + 224
    mem[(32 * _760) + (32 * _611) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _904 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _760) + (32 * _611) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _904 % 32:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _760) + (32 * _611) + 224, mem[mem[64] + 164 len _904 + (32 * _760) + (32 * _611) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1068 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1068 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1097 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1068 + ext_call.return_data[0]]
        _1099 = mem[_1068 + ext_call.return_data[0]]
        if not mem[_1068 + ext_call.return_data[0]]:
            if not mem[_1068 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1068 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1068 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1068 + ext_call.return_data[0]]) + mem[64] + -(mem[_1068 + ext_call.return_data[0]] % 32) + 100 len mem[_1068 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_1068 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1099 - 1)] = mem[_1068 + ext_call.return_data[0] + 64 len floor32(_1099 - 1)]
            if not _1099 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1099 + 32]
            mem[floor32(_1099) + mem[64] + 68] = mem[floor32(_1099) + mem[64] + -(_1099 % 32) + 100 len _1099 % 32]
        revert with memory
          from mem[64]
           len floor32(_1099) + _1097 + -mem[64] + 100
    mem[floor32(_904) + (32 * _760) + (32 * _611) + mem[64] + 260] = mem[floor32(_904) + (32 * _760) + (32 * _611) + mem[64] + -(_904 % 32) + 292 len _904 % 32]
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _760) + (32 * _611) + 224, mem[mem[64] + 164 len floor32(_904) + (32 * _760) + (32 * _611) + 128]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        mem[mem[64] + 108 len 24]
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _1078 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _1078 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _1119 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_1078 + ext_call.return_data[0]]
    _1121 = mem[_1078 + ext_call.return_data[0]]
    if not mem[_1078 + ext_call.return_data[0]]:
        if not mem[_1078 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_1078 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_1078 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1078 + ext_call.return_data[0]]) + mem[64] + -(mem[_1078 + ext_call.return_data[0]] % 32) + 100 len mem[_1078 + ext_call.return_data[0]] % 32]
        revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1121)]
    mem[mem[64] + 68] = mem[_1078 + ext_call.return_data[0] + 32]
    mem[mem[64] + 100 len floor32(_1121 - 1)] = mem[_1078 + ext_call.return_data[0] + 64 len floor32(_1121 - 1)]
    if not _1121 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _1121 + 32]
    mem[floor32(_1121) + mem[64] + 68] = mem[floor32(_1121) + mem[64] + -(_1121 % 32) + 100 len _1121 % 32]
    revert with memory
      from mem[64]
       len floor32(_1121) + _1119 + -mem[64] + 100
}



}
