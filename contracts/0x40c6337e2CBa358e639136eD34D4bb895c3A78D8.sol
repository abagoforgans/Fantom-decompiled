contract main {




// =====================  Runtime code  =====================


address owner;

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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c05e9f9c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'to.length == amount.length'
    if address(cd[4]):
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _56 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _57 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_57 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_57 + 36 len 28]
            mem[64] = _56 + 196
            mem[_56 + 132] = 32
            mem[_56 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_56 + 302 len 26]
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            _71 = mem[_57]
            t = _57 + 32
            u = mem[64]
            s = mem[_57]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_57])] = mem[_57 + floor32(mem[_57]) + -(mem[_57] % 32) + 64 len mem[_57] % 32] or Mask(8 * -(mem[_57] % 32) + 32, -(8 * -(mem[_57] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_57])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _71 + _56 + -mem[64] + 192]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _114 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_56 + 132]
                _116 = mem[_56 + 132]
                idx = 0
                while idx < _116:
                    mem[idx + _114 + 68] = mem[idx + _56 + 164]
                    idx = idx + 32
                    continue 
                if not _116 % 32:
                    revert with memory
                      from mem[64]
                       len _116 + _114 + -mem[64] + 68
                mem[floor32(_116) + _114 + 68] = mem[floor32(_116) + _114 + -(_116 % 32) + 100 len _116 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_116) + _114 + -mem[64] + 100
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_111] = return_data.size
            mem[_111 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_111 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _118 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_56 + 132]
            _120 = mem[_56 + 132]
            idx = 0
            while idx < _120:
                mem[idx + _118 + 68] = mem[idx + _56 + 164]
                idx = idx + 32
                continue 
            if not _120 % 32:
                revert with memory
                  from mem[64]
                   len _120 + _118 + -mem[64] + 68
            mem[floor32(_120) + _118 + 68] = mem[floor32(_120) + _118 + -(_120 % 32) + 100 len _120 % 32]
            revert with memory
              from mem[64]
               len floor32(_120) + _118 + -mem[64] + 100
    else:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            require idx < ('cd', 36).length
            if eth.balance(this.address) < cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 'Address: insufficient balance'
            call address(cd[((32 * idx) + cd[36] + 36)]) with:
               value cd[((32 * idx) + cd[68] + 36)] wei
                 gas gas_remaining wei
            if return_data.size:
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_63] = return_data.size
                mem[_63 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[mem[64] + 126 len 6]
            idx = idx + 1
            continue 
}



}
