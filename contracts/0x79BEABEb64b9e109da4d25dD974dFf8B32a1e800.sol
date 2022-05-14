contract main {




// =====================  Runtime code  =====================


const name = 'MetaWallet', 0

const TRANSFER_TYPEHASH = 0x753594b93c89ce39eea7584d3833310b268bf635b29f9a14f28080c2c6afa5cb

const DOMAIN_TYPEHASH = 0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35

const SEND_TYPEHASH = 0xbbfd783b0dd4a986fe1e926bfef59c8aefd8fad760b9dc587de15564a0e0005f

const EXECUTE_TYPEHASH = 0xea130d3c3b870867fa24e4cd434b8daf1274aa92e4b148650e7fd430706caa57

const APPROVE_TYPEHASH = 0x7b2500315e418252541b934c4b9b068a5600195deb8e7dc0bdd628f67bffe4c0


address stor0;
address stor1;
uint256 nonces;

function nonces() payable {
    return nonces
}

function _fallback() payable {
  stop
}

function acceptOwnership() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaWallet::acceptOwnership: !pendingOwner'
    stor0 = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaWallet::transferOwnership: !owner'
    stor1 = arg1
}

function send(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if nonces == -1:
        revert with 'NH{q', 17
    nonces++
    signer = erecover(sha3(0, sha3(0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35, sha3('MetaWallet'), chainid, this.address), sha3(0xbbfd783b0dd4a986fe1e926bfef59c8aefd8fad760b9dc587de15564a0e0005f, address(arg1), arg2, nonces, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == stor0
    require block.timestamp <= arg3
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        return bool(ext_call.success), 
               64,
               160,
               0xbbfd783b0dd4a986fe1e926bfef59c8aefd8fad760b9dc587de15564a0e0005f,
               address(arg1),
               arg2,
               nonces,
               arg3
    return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function execute(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if nonces == -1:
        revert with 'NH{q', 17
    nonces++
    mem[ceil32(arg3.length) + 160] = 0xea130d3c3b870867fa24e4cd434b8daf1274aa92e4b148650e7fd430706caa57
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = 192
    mem[ceil32(arg3.length) + 352] = arg3.length
    mem[ceil32(arg3.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) <= arg3.length:
        mem[ceil32(arg3.length) + 288] = nonces
        mem[ceil32(arg3.length) + 320] = arg4
        mem[ceil32(arg3.length) + 128] = ceil32(arg3.length) + 224
        _86 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        mem[(2 * ceil32(arg3.length)) + 480] = 0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35
        mem[(2 * ceil32(arg3.length)) + 512] = sha3('MetaWallet')
        mem[(2 * ceil32(arg3.length)) + 544] = chainid
        mem[(2 * ceil32(arg3.length)) + 576] = this.address
        _100 = sha3(mem[(2 * ceil32(arg3.length)) + 480 len ceil32(arg3.length) + 128])
        mem[(2 * ceil32(arg3.length)) + 738] = sha3(0, sha3(mem[(2 * ceil32(arg3.length)) + 480 len ceil32(arg3.length) + 128]), _86)
        mem[(2 * ceil32(arg3.length)) + 770] = arg5
        mem[(2 * ceil32(arg3.length)) + 802] = arg6
        mem[(2 * ceil32(arg3.length)) + 834] = arg7
        signer = erecover(sha3(0, _100, _86), arg5 << 248, arg6, arg7) 
    else:
        mem[ceil32(arg3.length) + arg3.length + 384] = 0
        mem[ceil32(arg3.length) + 288] = nonces
        mem[ceil32(arg3.length) + 320] = arg4
        mem[ceil32(arg3.length) + 128] = ceil32(arg3.length) + 224
        _92 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        mem[(2 * ceil32(arg3.length)) + 480] = 0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35
        mem[(2 * ceil32(arg3.length)) + 512] = sha3('MetaWallet')
        mem[(2 * ceil32(arg3.length)) + 544] = chainid
        mem[(2 * ceil32(arg3.length)) + 576] = this.address
        _104 = sha3(mem[(2 * ceil32(arg3.length)) + 480 len ceil32(arg3.length) + 128])
        mem[(2 * ceil32(arg3.length)) + 738] = sha3(0, sha3(mem[(2 * ceil32(arg3.length)) + 480 len ceil32(arg3.length) + 128]), _92)
        mem[(2 * ceil32(arg3.length)) + 770] = arg5
        mem[(2 * ceil32(arg3.length)) + 802] = arg6
        mem[(2 * ceil32(arg3.length)) + 834] = arg7
        signer = erecover(sha3(0, _104, _92), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == stor0
    require block.timestamp <= arg4
    mem[(2 * ceil32(arg3.length)) + 738 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[(2 * ceil32(arg3.length)) + arg3.length + 738] = 0
    call arg1.mem[(2 * ceil32(arg3.length)) + 738 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[(2 * ceil32(arg3.length)) + 742 len arg3.length - 4]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[(2 * ceil32(arg3.length)) + 738] = bool(ext_call.success)
    mem[(2 * ceil32(arg3.length)) + 770] = 64
    mem[(2 * ceil32(arg3.length)) + 802] = arg3.length
    mem[(2 * ceil32(arg3.length)) + 834 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[(2 * ceil32(arg3.length)) + arg3.length + 834] = 0
    return memory
      from (2 * ceil32(arg3.length)) + 738
       len (5 * ceil32(arg3.length)) + 96
}

function sub_8308e726(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 32
        mem[_88] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]
        mem[_88 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]]
        mem[_88 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)] + 32] = 0
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] == uint8(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        if nonces == -1:
            revert with 'NH{q', 17
        nonces++
        _90 = mem[64]
        mem[mem[64] + 32] = 0xea130d3c3b870867fa24e4cd434b8daf1274aa92e4b148650e7fd430706caa57
        mem[mem[64] + 64] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
        mem[mem[64] + 96] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
        mem[mem[64] + 128] = 192
        mem[mem[64] + 224] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]
        s = 0
        while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]:
            mem[mem[64] + s + 256] = mem[_88 + s + 32]
            s = s + 32
            continue 
        if ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) <= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]:
            mem[mem[64] + 160] = nonces
            mem[mem[64] + 192] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]
            _167 = mem[64]
            mem[mem[64]] = ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 224
            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 256
            _169 = sha3(mem[_167 + 32 len mem[_167]])
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 256] = 10
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 288] = 'MetaWallet'
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 352] = 0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 384] = sha3('MetaWallet')
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 416] = chainid
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 448] = this.address
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 320] = 128
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 514] = sha3(0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35, sha3('MetaWallet'), chainid, this.address)
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 546] = _169
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 480] = 66
            mem[64] = _90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 610
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 610] = sha3(0, sha3(0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35, sha3('MetaWallet'), chainid, this.address), _169)
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 642] = uint8(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)])
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 674] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)]
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 706] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)]
            signer = erecover(sha3(0, sha3(0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35, sha3('MetaWallet'), chainid, this.address), _169), cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] << 248, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)], cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)]) 
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 578] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) == stor0
            require block.timestamp <= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]
            _208 = mem[_88]
            s = 0
            while s < _208:
                mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + s + 610] = mem[_88 + s + 32]
                s = s + 32
                continue 
            if ceil32(_208) > _208:
                mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + _208 + 610] = 0
            call address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]).mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 610 len 4] with:
               value cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] wei
                 gas gas_remaining wei
                args mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 614 len _208 - 4]
        else:
            mem[mem[64] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)] + 256] = 0
            mem[mem[64] + 160] = nonces
            mem[mem[64] + 192] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]
            _173 = mem[64]
            mem[mem[64]] = ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 224
            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 256
            _175 = sha3(mem[_173 + 32 len mem[_173]])
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 256] = 10
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 288] = 'MetaWallet'
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 352] = 0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 384] = sha3('MetaWallet')
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 416] = chainid
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 448] = this.address
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 320] = 128
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 514] = sha3(0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35, sha3('MetaWallet'), chainid, this.address)
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 546] = _175
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 480] = 66
            mem[64] = _90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 610
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 610] = sha3(0, sha3(0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35, sha3('MetaWallet'), chainid, this.address), _175)
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 642] = uint8(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)])
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 674] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)]
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 706] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)]
            signer = erecover(sha3(0, sha3(0x797cfab58fcb15f590eb8e4252d5c228ff88f94f907e119e80c4393a946e8f35, sha3('MetaWallet'), chainid, this.address), _175), cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] << 248, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)], cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)]) 
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 578] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) == stor0
            require block.timestamp <= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]
            _209 = mem[_88]
            s = 0
            while s < _209:
                mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + s + 610] = mem[_88 + s + 32]
                s = s + 32
                continue 
            if ceil32(_209) > _209:
                mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + _209 + 610] = 0
            call address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]).mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 610 len 4] with:
               value cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] wei
                 gas gas_remaining wei
                args mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 614 len _209 - 4]
        if return_data.size:
            mem[64] = _90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + ceil32(return_data.size) + 611
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 610] = return_data.size
            mem[_90 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] + 36)]) + 642 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = bool(ext_call.success)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _81 = mem[64]
    mem[mem[64]] = 64
    _82 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _82:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_81 + 32] = (32 * _82) + 96
    _163 = mem[96]
    mem[_81 + (32 * _82) + 96] = mem[96]
    idx = 0
    s = 128
    t = _81 + (32 * _82) + (32 * _163) + 128
    u = _81 + (32 * _82) + 128
    while idx < _163:
        mem[u] = t + -_81 + -(32 * _82) - 128
        _236 = mem[s]
        _240 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _240:
            mem[t + v + 32] = mem[_236 + v + 32]
            v = v + 32
            continue 
        if ceil32(_240) > _240:
            mem[t + _240 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_240) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
