contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const baseURI = 'https://nftyears.com/images/'


mapping of uint8 stor0;
mapping of struct stor1;
mapping of uint256 stor2;
array of struct stor3;
mapping of uint256 stor4;
uint256 totalSupply;
uint256 stor7;
mapping of address approved;
mapping of uint8 stor9;
array of uint256 name;
array of uint256 symbol;
array of struct stor12;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor9[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor9[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if var27002 >= var27001:
        return var27003
    if var33001 >= stor[var33002]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require var35002 < stor[var35003]
    if var53002 >= var53001:
        return var53003
    # nil
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0 < stor1[address(arg1)].field_0:
        if arg2 < stor2[stor1[address(arg1)].field_0] - stor1[address(arg1)].field_0:
            return (arg2 + stor1[address(arg1)].field_0)
        require arg2 - stor2[stor1[address(arg1)].field_0] + stor1[address(arg1)].field_0 >= 1
        require var37002 < var37001
        if var43001 < stor[var43002]:
            require var45002 < stor[var45003]
            if var53006 < stor2[var53001] - var53001:
                return (var53006 + var53001)
            require var53006 - stor2[var53001] + var53001 >= 1
            require var53002 + 1 < stor1[address(arg1)].field_0
            idx = var53002
            s = stor2[var53001]
            t = var53001
            u = var53006
            while idx + 1 < stor1[address(arg1)].field_0:
                if u - s + t < stor2[stor1[address(arg1)][idx].field_256] - stor1[address(arg1)][idx].field_256:
                    return (u - s + t + stor1[address(arg1)][idx].field_256)
                require u - s + t - stor2[stor1[address(arg1)][idx].field_256] + stor1[address(arg1)][idx].field_256 >= 1
                require idx + 2 < stor1[address(arg1)].field_0
                mem[0] = arg1
                mem[32] = 1
                idx = idx + 1
                s = stor2[stor1[address(arg1)][idx].field_256]
                t = stor1[address(arg1)][idx].field_256
                u = u - s + t
                continue 
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                mem[198 len 30]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3.length <= stor7:
        mem[0] = 0
        mem[32] = 2
        if arg1 >= stor2[0]:
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while idx < stor3.length - 1:
                mem[0] = s
                mem[32] = 2
                if arg1 >= stor2[s]:
                    idx = idx + 1
                    s = stor2[s]
                    continue 
                if not stor4[s]:
                    revert with 0, 'EnumerableMap: nonexistent key'
                require stor4[s] - 1 < stor3.length
                return stor3[stor4[s] - 1]
            return 0
        if not stor4[0]:
            revert with 0, 'EnumerableMap: nonexistent key'
        if stor4[0] - 1 < stor3.length:
            return stor3[stor4[0] - 1]
    else:
        if stor4[arg1]:
            if stor4[arg1] - 1 < stor3.length:
                return stor3[stor4[arg1] - 1]
        else:
            mem[0] = 0
            mem[32] = 2
            if arg1 >= stor2[0]:
                idx = 0
                s = stor[sha3(mem[0 len 64])]
                while idx < stor3.length - 1:
                    mem[0] = s
                    mem[32] = 2
                    if arg1 >= stor2[s]:
                        idx = idx + 1
                        s = stor2[s]
                        continue 
                    if not stor4[s]:
                        revert with 0, 'EnumerableMap: nonexistent key'
                    require stor4[s] - 1 < stor3.length
                    return stor3[stor4[s] - 1]
                return 0
            if not stor4[0]:
                revert with 0, 'EnumerableMap: nonexistent key'
            if stor4[0] - 1 < stor3.length:
                return stor3[stor4[0] - 1]
    revert
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 12
    mem[96] = stor12[arg1].length
    mem[0] = sha3(arg1, 12)
    mem[128] = stor12[arg1].field_0
    idx = 128
    s = 0
    while stor12[arg1].length + 96 > idx:
        mem[idx + 32] = stor12[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor12[arg1].length) + 192
    mem[ceil32(stor12[arg1].length) + 128] = 28
    mem[ceil32(stor12[arg1].length) + 160] = 'https://nftyears.com/images/'
    if stor12[arg1].length:
        mem[ceil32(stor12[arg1].length) + 224 len 0] = None
        mem[ceil32(stor12[arg1].length) + 224 len 28] = 'https://nftyears.com/images/'
        mem[ceil32(stor12[arg1].length) + 252 len floor32(stor12[arg1].length)] = mem[128 len floor32(stor12[arg1].length)]
        mem[ceil32(stor12[arg1].length) + floor32(stor12[arg1].length) + 252] = mem[floor32(stor12[arg1].length) + -stor12[arg1].length % 32 + 160 len stor12[arg1].length % 32] or Mask(8 * -stor12[arg1].length % 32 + 32, -(8 * -stor12[arg1].length % 32 + 32) + 256, mem[ceil32(stor12[arg1].length) + floor32(stor12[arg1].length) + 252])
        mem[stor12[arg1].length + ceil32(stor12[arg1].length) + 252] = 32
        mem[stor12[arg1].length + ceil32(stor12[arg1].length) + 284] = mem[ceil32(stor12[arg1].length) + 192]
        mem[stor12[arg1].length + ceil32(stor12[arg1].length) + 316 len ceil32(mem[ceil32(stor12[arg1].length) + 192])] = mem[ceil32(stor12[arg1].length) + 224 len ceil32(mem[ceil32(stor12[arg1].length) + 192])]
        var29001 = ceil32(mem[ceil32(stor12[arg1].length) + 192])
        if not mem[ceil32(stor12[arg1].length) + 192] % 32:
            return 32, mem[stor12[arg1].length + ceil32(stor12[arg1].length) + 284 len mem[ceil32(stor12[arg1].length) + 192] + 32]
        mem[floor32(mem[ceil32(stor12[arg1].length) + 192]) + stor12[arg1].length + ceil32(stor12[arg1].length) + 316] = mem[floor32(mem[ceil32(stor12[arg1].length) + 192]) + stor12[arg1].length + ceil32(stor12[arg1].length) + -(mem[ceil32(stor12[arg1].length) + 192] % 32) + 348 len mem[ceil32(stor12[arg1].length) + 192] % 32]
        return Array(len=mem[ceil32(stor12[arg1].length) + 192], data=mem[stor12[arg1].length + ceil32(stor12[arg1].length) + 316 len floor32(mem[ceil32(stor12[arg1].length) + 192]) + 32]), 
    if not (7 * arg1) + 2108:
        mem[ceil32(stor12[arg1].length) + 288 len 0] = None
        mem[ceil32(stor12[arg1].length) + 288 len 28] = 'https://nftyears.com/images/'
        mem[ceil32(stor12[arg1].length) + 316 len 0] = None
        mem[ceil32(stor12[arg1].length) + 316 len 1] = 48
        mem[ceil32(stor12[arg1].length) + 317] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor12[arg1].length) + 322] = 32
        mem[ceil32(stor12[arg1].length) + 354] = mem[ceil32(stor12[arg1].length) + 256]
        mem[ceil32(stor12[arg1].length) + 386 len ceil32(mem[ceil32(stor12[arg1].length) + 256])] = mem[ceil32(stor12[arg1].length) + 288 len ceil32(mem[ceil32(stor12[arg1].length) + 256])]
        if not mem[ceil32(stor12[arg1].length) + 256] % 32:
            return 32, mem[ceil32(stor12[arg1].length) + 354 len mem[ceil32(stor12[arg1].length) + 256] + 32]
        mem[floor32(mem[ceil32(stor12[arg1].length) + 256]) + ceil32(stor12[arg1].length) + 386] = mem[floor32(mem[ceil32(stor12[arg1].length) + 256]) + ceil32(stor12[arg1].length) + -(mem[ceil32(stor12[arg1].length) + 256] % 32) + 418 len mem[ceil32(stor12[arg1].length) + 256] % 32]
        return Array(len=mem[ceil32(stor12[arg1].length) + 256], data=mem[ceil32(stor12[arg1].length) + 386 len floor32(mem[ceil32(stor12[arg1].length) + 256]) + 32]), 
    s = 0
    idx = (7 * arg1) + 2108
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    if s:
        mem[ceil32(stor12[arg1].length) + 224 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = (7 * arg1) + 2108
    while idx:
        require t < s
        mem[t + ceil32(stor12[arg1].length) + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor12[arg1].length) + ceil32(s) + 256 len 0] = None
    mem[ceil32(stor12[arg1].length) + ceil32(s) + 256 len 28] = 'https://nftyears.com/images/'
    mem[ceil32(stor12[arg1].length) + ceil32(s) + 284 len floor32(s)] = mem[ceil32(stor12[arg1].length) + 224 len floor32(s)]
    mem[ceil32(stor12[arg1].length) + ceil32(s) + floor32(s) + 284] = mem[ceil32(stor12[arg1].length) + ceil32(s) + floor32(s) + 284] and 256^(-(s % 32) + 32) - 1 or mem[ceil32(stor12[arg1].length) + floor32(s) + 224] and !(256^(-(s % 32) + 32) - 1)
    mem[ceil32(stor12[arg1].length) + ceil32(s) + s + 284] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor12[arg1].length) + ceil32(s) + s + 289] = 32
    mem[ceil32(stor12[arg1].length) + ceil32(s) + s + 321] = mem[ceil32(stor12[arg1].length) + ceil32(s) + 224]
    mem[ceil32(stor12[arg1].length) + ceil32(s) + s + 353 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(s) + 224])] = mem[ceil32(stor12[arg1].length) + ceil32(s) + 256 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(s) + 224])]
    if not mem[ceil32(stor12[arg1].length) + ceil32(s) + 224] % 32:
        return 32, mem[ceil32(stor12[arg1].length) + ceil32(s) + s + 321 len mem[ceil32(stor12[arg1].length) + ceil32(s) + 224] + 32]
    mem[floor32(mem[ceil32(stor12[arg1].length) + ceil32(s) + 224]) + ceil32(stor12[arg1].length) + ceil32(s) + s + 353] = mem[floor32(mem[ceil32(stor12[arg1].length) + ceil32(s) + 224]) + ceil32(stor12[arg1].length) + ceil32(s) + s + -(mem[ceil32(stor12[arg1].length) + ceil32(s) + 224] % 32) + 385 len mem[ceil32(stor12[arg1].length) + ceil32(s) + 224] % 32]
    return Array(len=mem[ceil32(stor12[arg1].length) + ceil32(s) + 224], data=mem[ceil32(stor12[arg1].length) + ceil32(s) + s + 353 len floor32(mem[ceil32(stor12[arg1].length) + ceil32(s) + 224]) + 32]), 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor3.length <= stor7:
        mem[0] = 0
        mem[32] = 2
        if arg2 >= stor2[0]:
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while idx < stor3.length - 1:
                mem[0] = s
                mem[32] = 2
                if arg2 >= stor2[s]:
                    idx = idx + 1
                    s = stor2[s]
                    continue 
                if not stor4[s]:
                    revert with 0, 'EnumerableMap: nonexistent key'
                require stor4[s] - 1 < stor3.length
                if arg1 == stor3[stor4[s] - 1]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                                mem[197 len 31]
                if stor3[stor4[s] - 1] != msg.sender:
                    if not stor9[stor3[stor4[s] - 1]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    56,
                                    0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                    mem[220 len 8]
                approved[arg2] = arg1
                if stor3.length <= stor7:
                    mem[0] = 0
                    mem[32] = 2
                    if arg2 >= stor2[0]:
                        idx = 0
                        s = stor[sha3(mem[0 len 64])]
                        while idx < stor3.length - 1:
                            mem[0] = s
                            mem[32] = 2
                            if arg2 >= stor2[s]:
                                idx = idx + 1
                                s = stor2[s]
                                continue 
                            if not stor4[s]:
                                revert with 0, 'EnumerableMap: nonexistent key'
                            require stor4[s] - 1 < stor3.length
                            emit Approval(stor3[stor4[s] - 1], arg1, arg2);
                        emit Approval(0, arg1, arg2);
                    else:
                        if not stor4[0]:
                            revert with 0, 'EnumerableMap: nonexistent key'
                        require stor4[0] - 1 < stor3.length
                        emit Approval(stor3[stor4[0] - 1], arg1, arg2);
                else:
                    if stor4[arg2]:
                        require stor4[arg2] - 1 < stor3.length
                        emit Approval(stor3[stor4[arg2] - 1], arg1, arg2);
                    else:
                        mem[0] = 0
                        mem[32] = 2
                        if arg2 >= stor2[0]:
                            idx = 0
                            s = stor[sha3(mem[0 len 64])]
                            while idx < stor3.length - 1:
                                mem[0] = s
                                mem[32] = 2
                                if arg2 >= stor2[s]:
                                    idx = idx + 1
                                    s = stor2[s]
                                    continue 
                                if not stor4[s]:
                                    revert with 0, 'EnumerableMap: nonexistent key'
                                require stor4[s] - 1 < stor3.length
                                emit Approval(stor3[stor4[s] - 1], arg1, arg2);
                            emit Approval(0, arg1, arg2);
                        else:
                            if not stor4[0]:
                                revert with 0, 'EnumerableMap: nonexistent key'
                            require stor4[0] - 1 < stor3.length
                            emit Approval(stor3[stor4[0] - 1], arg1, arg2);
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                            mem[197 len 31]
            if msg.sender:
                if not stor9[0][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                mem[220 len 8]
        else:
            if not stor4[0]:
                revert with 0, 'EnumerableMap: nonexistent key'
            require stor4[0] - 1 < stor3.length
            if arg1 == stor3[stor4[0] - 1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                            mem[197 len 31]
            if stor3[stor4[0] - 1] != msg.sender:
                if not stor9[stor3[stor4[0] - 1]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                mem[220 len 8]
    else:
        if stor4[arg2]:
            require stor4[arg2] - 1 < stor3.length
            if arg1 == stor3[stor4[arg2] - 1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                            mem[197 len 31]
            if stor3[stor4[arg2] - 1] != msg.sender:
                if not stor9[stor3[stor4[arg2] - 1]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                mem[220 len 8]
        else:
            mem[0] = 0
            mem[32] = 2
            if arg2 >= stor2[0]:
                idx = 0
                s = stor[sha3(mem[0 len 64])]
                while idx < stor3.length - 1:
                    mem[0] = s
                    mem[32] = 2
                    if arg2 >= stor2[s]:
                        idx = idx + 1
                        s = stor2[s]
                        continue 
                    if not stor4[s]:
                        revert with 0, 'EnumerableMap: nonexistent key'
                    require stor4[s] - 1 < stor3.length
                    if arg1 == stor3[stor4[s] - 1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                                    mem[197 len 31]
                    if stor3[stor4[s] - 1] != msg.sender:
                        if not stor9[stor3[stor4[s] - 1]][address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        56,
                                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                        mem[220 len 8]
                    approved[arg2] = arg1
                    if stor3.length <= stor7:
                        mem[0] = 0
                        mem[32] = 2
                        if arg2 >= stor2[0]:
                            idx = 0
                            s = stor[sha3(mem[0 len 64])]
                            while idx < stor3.length - 1:
                                mem[0] = s
                                mem[32] = 2
                                if arg2 >= stor2[s]:
                                    idx = idx + 1
                                    s = stor2[s]
                                    continue 
                                if not stor4[s]:
                                    revert with 0, 'EnumerableMap: nonexistent key'
                                require stor4[s] - 1 < stor3.length
                                emit Approval(stor3[stor4[s] - 1], arg1, arg2);
                            emit Approval(0, arg1, arg2);
                        else:
                            if not stor4[0]:
                                revert with 0, 'EnumerableMap: nonexistent key'
                            require stor4[0] - 1 < stor3.length
                            emit Approval(stor3[stor4[0] - 1], arg1, arg2);
                    else:
                        if stor4[arg2]:
                            require stor4[arg2] - 1 < stor3.length
                            emit Approval(stor3[stor4[arg2] - 1], arg1, arg2);
                        else:
                            mem[0] = 0
                            mem[32] = 2
                            if arg2 >= stor2[0]:
                                idx = 0
                                s = stor[sha3(mem[0 len 64])]
                                while idx < stor3.length - 1:
                                    mem[0] = s
                                    mem[32] = 2
                                    if arg2 >= stor2[s]:
                                        idx = idx + 1
                                        s = stor2[s]
                                        continue 
                                    if not stor4[s]:
                                        revert with 0, 'EnumerableMap: nonexistent key'
                                    require stor4[s] - 1 < stor3.length
                                    emit Approval(stor3[stor4[s] - 1], arg1, arg2);
                                emit Approval(0, arg1, arg2);
                            else:
                                if not stor4[0]:
                                    revert with 0, 'EnumerableMap: nonexistent key'
                                require stor4[0] - 1 < stor3.length
                                emit Approval(stor3[stor4[0] - 1], arg1, arg2);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                                mem[197 len 31]
                if msg.sender:
                    if not stor9[0][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    56,
                                    0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                    mem[220 len 8]
            else:
                if not stor4[0]:
                    revert with 0, 'EnumerableMap: nonexistent key'
                require stor4[0] - 1 < stor3.length
                if arg1 == stor3[stor4[0] - 1]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                                mem[197 len 31]
                if stor3[stor4[0] - 1] != msg.sender:
                    if not stor9[stor3[stor4[0] - 1]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    56,
                                    0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                    mem[220 len 8]
    approved[arg2] = arg1
    if stor3.length <= stor7:
        mem[0] = 0
        mem[32] = 2
        if arg2 >= stor2[0]:
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while idx < stor3.length - 1:
                mem[0] = s
                mem[32] = 2
                if arg2 >= stor2[s]:
                    idx = idx + 1
                    s = stor2[s]
                    continue 
                if not stor4[s]:
                    revert with 0, 'EnumerableMap: nonexistent key'
                require stor4[s] - 1 < stor3.length
                emit Approval(stor3[stor4[s] - 1], arg1, arg2);
            emit Approval(0, arg1, arg2);
        else:
            if not stor4[0]:
                revert with 0, 'EnumerableMap: nonexistent key'
            require stor4[0] - 1 < stor3.length
            emit Approval(stor3[stor4[0] - 1], arg1, arg2);
    else:
        if stor4[arg2]:
            require stor4[arg2] - 1 < stor3.length
            emit Approval(stor3[stor4[arg2] - 1], arg1, arg2);
        else:
            mem[0] = 0
            mem[32] = 2
            if arg2 >= stor2[0]:
                idx = 0
                s = stor[sha3(mem[0 len 64])]
                while idx < stor3.length - 1:
                    mem[0] = s
                    mem[32] = 2
                    if arg2 >= stor2[s]:
                        idx = idx + 1
                        s = stor2[s]
                        continue 
                    if not stor4[s]:
                        revert with 0, 'EnumerableMap: nonexistent key'
                    require stor4[s] - 1 < stor3.length
                    emit Approval(stor3[stor4[s] - 1], arg1, arg2);
                emit Approval(0, arg1, arg2);
            else:
                if not stor4[0]:
                    revert with 0, 'EnumerableMap: nonexistent key'
                require stor4[0] - 1 < stor3.length
                emit Approval(stor3[stor4[0] - 1], arg1, arg2);
}



}
