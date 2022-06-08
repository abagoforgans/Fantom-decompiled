contract main {




// =====================  Runtime code  =====================


const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
uint256 stor1;
mapping of uint8 stor2;

function sub_3ed5a982(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
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

function emergencyWithdrawEther() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x214f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addwhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor2[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(arg1)] = 1
}

function sub_a664c769(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x21526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor2[address(arg1)] = 0
}

function multiSendNFT(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if arg2.length != arg3.length:
        revert with 0, 'error size'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _24 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_22)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _24
        require ext_code.size(arg1)
        call arg1.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(_22), _24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit 0x97f652f9: 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3.length, msg.sender
}

function emergencyWithdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function multiSendEther(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length != arg2.length:
        revert with 0, 'error size'
    idx = 0
    s = 0
    t = msg.value
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require t >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + 128]
        _60 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _61 = mem[64]
        mem[64] = mem[64] + 64
        mem[_61] = 30
        mem[_61 + 32] = 'SafeMath: subtraction overflow'
        if _60 > t:
            _68 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_68 + idx + 68] = mem[_61 + idx + 32]
                idx = idx + 32
                continue 
            mem[_68 + 68] = mem[_68 + 70 len 30]
            revert with memory
              from mem[64]
               len _68 + -mem[64] + 100
        require idx < mem[96]
        _73 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _77 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _79 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        _81 = mem[_79]
        v = _79 + 32
        w = mem[64]
        u = mem[_79]
        while u >= 32:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u - 32
            continue 
        mem[mem[64] + floor32(mem[_79])] = mem[_79 + floor32(mem[_79]) + -(mem[_79] % 32) + 64 len mem[_79] % 32] or Mask(8 * -(mem[_79] % 32) + 32, -(8 * -(mem[_79] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_79])])
        call address(_73).mem[mem[64] len 4] with:
           value _77 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _81 + _79 + -mem[64] + 28]
        if return_data.size:
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_104] = return_data.size
            mem[_104 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
        require idx < mem[(32 * arg1.length) + 128]
        if s + mem[(32 * idx) + (32 * arg1.length) + 160] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        t = t - _60
        continue 
    if not msg.sender:
        revert with 0, 32, 34, 0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
    if not stor2[address(msg.sender)]:
        if msg.value < s + stor1:
            revert with 0, 
                        32,
                        49,
                        0x6c506c656173652073656e6420616d6f756e742b302e303120626e6220746f20757365207468697320636f6e7472616374,
                        mem[mem[64] + 117 len 15]
    emit 0x97f652f9: 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, msg.sender
}

function sub_b425ccbb(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    idx = 0
    s = 0
    s = 0
    while idx < arg3.length:
        require idx < mem[96]
        _68 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(_68)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 1:
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s
            continue 
        require idx < mem[96]
        _74 = mem[(32 * idx) + 128]
        _75 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_74)
        mem[mem[64] + 100] = ext_call.return_data[0] * arg4
        _76 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_76 + 32] = mem[_76 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _75 + 196
        mem[_75 + 132] = 32
        mem[_75 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_75 + 302 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        _82 = mem[_76]
        u = _76 + 32
        v = mem[64]
        t = mem[_76]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[_76])] = mem[_76 + floor32(mem[_76]) + -(mem[_76] % 32) + 64 len mem[_76] % 32] or Mask(8 * -(mem[_76] % 32) + 32, -(8 * -(mem[_76] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_76])])
        call arg1.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _82 + _75 + -mem[64] + 192]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                if s + ext_call.return_data[0] < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = ext_call.return_data[0]
                s = s + ext_call.return_data[0]
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            _133 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_75 + 132]
            _135 = mem[_75 + 132]
            idx = 0
            while idx < _135:
                mem[_133 + idx + 68] = mem[_75 + idx + 164]
                idx = idx + 32
                continue 
            if not _135 % 32:
                revert with memory
                  from mem[64]
                   len _135 + _133 + -mem[64] + 68
            mem[floor32(_135) + _133 + 68] = mem[floor32(_135) + _133 + -(_135 % 32) + 100 len _135 % 32]
            revert with memory
              from mem[64]
               len floor32(_135) + _133 + -mem[64] + 100
        _130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_130] = return_data.size
        mem[_130 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_130 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
            if s + ext_call.return_data[0] < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s + ext_call.return_data[0]
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_75 + 132]
        _139 = mem[_75 + 132]
        idx = 0
        while idx < _139:
            mem[_137 + idx + 68] = mem[_75 + idx + 164]
            idx = idx + 32
            continue 
        if not _139 % 32:
            revert with memory
              from mem[64]
               len _139 + _137 + -mem[64] + 68
        mem[floor32(_139) + _137 + 68] = mem[floor32(_139) + _137 + -(_139 % 32) + 100 len _139 % 32]
        revert with memory
          from mem[64]
           len floor32(_139) + _137 + -mem[64] + 100
    emit 0x97f652f9: address(arg1), s, msg.sender
}

function multiSendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 262 len 30]
    mem[0] = msg.sender
    mem[32] = 2
    if stor2[address(msg.sender)]:
        if arg2.length != arg3.length:
            revert with 0, 'error size'
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < mem[96]
            _158 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            _161 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _165 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_158)
            mem[mem[64] + 100] = _161
            _166 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_166 + 32] = mem[_166 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _165 + 196
            mem[_165 + 132] = 32
            mem[_165 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_165 + 302 len 26]
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            _179 = mem[_166]
            u = _166 + 32
            v = mem[64]
            t = mem[_166]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_166])] = mem[_166 + floor32(mem[_166]) + -(mem[_166] % 32) + 64 len mem[_166] % 32] or Mask(8 * -(mem[_166] % 32) + 32, -(8 * -(mem[_166] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_166])])
            call arg1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _179 + _165 + -mem[64] + 192]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    require idx < mem[(32 * arg2.length) + 128]
                    if s + mem[(32 * idx) + (32 * arg2.length) + 160] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s + mem[(32 * idx) + (32 * arg2.length) + 160]
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _302 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_165 + 132]
                _304 = mem[_165 + 132]
                idx = 0
                while idx < _304:
                    mem[_302 + idx + 68] = mem[_165 + idx + 164]
                    idx = idx + 32
                    continue 
                if not _304 % 32:
                    revert with memory
                      from mem[64]
                       len _304 + _302 + -mem[64] + 68
                mem[floor32(_304) + _302 + 68] = mem[floor32(_304) + _302 + -(_304 % 32) + 100 len _304 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_304) + _302 + -mem[64] + 100
            _289 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_289] = return_data.size
            mem[_289 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_289 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                require idx < mem[(32 * arg2.length) + 128]
                if s + mem[(32 * idx) + (32 * arg2.length) + 160] < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + mem[(32 * idx) + (32 * arg2.length) + 160]
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_165 + 132]
            _308 = mem[_165 + 132]
            idx = 0
            while idx < _308:
                mem[_306 + idx + 68] = mem[_165 + idx + 164]
                idx = idx + 32
                continue 
            if not _308 % 32:
                revert with memory
                  from mem[64]
                   len _308 + _306 + -mem[64] + 68
            mem[floor32(_308) + _306 + 68] = mem[floor32(_308) + _306 + -(_308 % 32) + 100 len _308 % 32]
            revert with memory
              from mem[64]
               len floor32(_308) + _306 + -mem[64] + 100
    else:
        if msg.value < stor1:
            revert with 0, 
                        32,
                        42,
                        0xfe506c656173652073656e6420302e303120626e6220746f20757365207468697320636f6e7472616374,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 270 len 22]
        if arg2.length != arg3.length:
            revert with 0, 'error size'
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < mem[96]
            _156 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            _160 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _162 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_156)
            mem[mem[64] + 100] = _160
            _163 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_163 + 32] = mem[_163 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _162 + 196
            mem[_162 + 132] = 32
            mem[_162 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_162 + 302 len 26]
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            _175 = mem[_163]
            u = _163 + 32
            v = mem[64]
            t = mem[_163]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_163])] = mem[_163 + floor32(mem[_163]) + -(mem[_163] % 32) + 64 len mem[_163] % 32] or Mask(8 * -(mem[_163] % 32) + 32, -(8 * -(mem[_163] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_163])])
            call arg1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _175 + _162 + -mem[64] + 192]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    require idx < mem[(32 * arg2.length) + 128]
                    if s + mem[(32 * idx) + (32 * arg2.length) + 160] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s + mem[(32 * idx) + (32 * arg2.length) + 160]
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _294 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_162 + 132]
                _296 = mem[_162 + 132]
                idx = 0
                while idx < _296:
                    mem[_294 + idx + 68] = mem[_162 + idx + 164]
                    idx = idx + 32
                    continue 
                if not _296 % 32:
                    revert with memory
                      from mem[64]
                       len _296 + _294 + -mem[64] + 68
                mem[floor32(_296) + _294 + 68] = mem[floor32(_296) + _294 + -(_296 % 32) + 100 len _296 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_296) + _294 + -mem[64] + 100
            _288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_288] = return_data.size
            mem[_288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_288 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                require idx < mem[(32 * arg2.length) + 128]
                if s + mem[(32 * idx) + (32 * arg2.length) + 160] < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + mem[(32 * idx) + (32 * arg2.length) + 160]
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _298 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_162 + 132]
            _300 = mem[_162 + 132]
            idx = 0
            while idx < _300:
                mem[_298 + idx + 68] = mem[_162 + idx + 164]
                idx = idx + 32
                continue 
            if not _300 % 32:
                revert with memory
                  from mem[64]
                   len _300 + _298 + -mem[64] + 68
            mem[floor32(_300) + _298 + 68] = mem[floor32(_300) + _298 + -(_300 % 32) + 100 len _300 % 32]
            revert with memory
              from mem[64]
               len floor32(_300) + _298 + -mem[64] + 100
    emit 0x97f652f9: address(arg1), s, msg.sender
}



}
