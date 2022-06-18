contract main {




// =====================  Runtime code  =====================


const sub_4d035940(?) = 2

const sub_5d1a42a1(?) = 500

const sub_72c69e8b(?) = 1000

const sub_c8f566dd(?) = 1

const sub_e4bc7f98(?) = 0

const sub_ff677c7b(?) = 100


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct stor51;
array of address stor52;
address sub_9bb3f520Address;
uint32 stor3608;
address stor3608;
uint256 stor3608;
array of address stor31997345449574252472561286867836691613551392380036115619611668045310140188353;
uint8 stor4910;

function sub_9bb3f520(?) {
    return sub_9bb3f520Address
}

function _fallback() payable {
    revert
}

function sub_f466fe5a(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor51[address(arg2)].field_160 < uint32(arg1):
        return 0
    return 1
}

function sub_78e3f414(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if address(arg2) != msg.sender:
        revert with 0, 'Address is not sender'
    if stor51[address(arg2)].field_160 < uint32(arg1):
        revert with 0, 'Missing role'
    if uint32(arg1) > stor51[msg.sender].field_160:
        revert with 0, 'Account is below role'
    stor51[address(arg2)].field_160 = 0
    emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
}

function sub_45e49ba1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_9bb3f520Address = address(arg1)
}

function sub_bcb85b24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor51[address(arg1)].field_192 = uint64(bool(arg2))
}

function sub_2c3eafc1(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if stor51[address(arg2)].field_160 < uint32(arg1):
        revert with 0, 'Missing role'
    if uint32(arg1) > stor51[msg.sender].field_160:
        revert with 0, 'Account is below role'
    stor51[address(arg2)].field_160 = 0
    emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
}

function sub_8b9b3b63(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if stor51[address(arg2)].field_0 != address(arg2):
        stor52.length++
        stor46BD[stor52.length] = address(arg2)
    if stor51[address(arg2)].field_160 >= uint32(arg1):
        revert with 0, 'Account has role already'
    if uint32(arg1) > stor51[msg.sender].field_160:
        revert with 0, 'Account is below required role'
    stor51[address(arg2)].field_0 = address(arg2)
    stor51[address(arg2)].field_160 = uint32(arg1)
    stor51[address(arg2)].field_192 = 1
    emit 0x8b5a40e1: uint32(arg1), address(arg2), msg.sender
}

function setName(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(sub_9bb3f520Address)
    staticcall sub_9bb3f520Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if stor51[address(msg.sender)].field_160 < 1000:
            revert with 0, 'Access denied'
    if arg2.length >= 2000:
        revert with 0, 'Too big'
    require ext_code.size(sub_9bb3f520Address)
    call sub_9bb3f520Address.0x33f751b7 with:
         gas gas_remaining wei
        args arg1, 1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMessage(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(sub_9bb3f520Address)
    staticcall sub_9bb3f520Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if stor51[address(msg.sender)].field_160 < 1000:
            revert with 0, 'Access denied'
    if arg2.length >= 2000:
        revert with 0, 'Too big'
    require ext_code.size(sub_9bb3f520Address)
    call sub_9bb3f520Address.0x33f751b7 with:
         gas gas_remaining wei
        args arg1, 2, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getName(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0xeae4a08b00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 1
    require ext_code.size(sub_9bb3f520Address)
    staticcall sub_9bb3f520Address.0xeae4a08b with:
            gas gas_remaining wei
           args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function getMessage(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0xeae4a08b00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 2
    require ext_code.size(sub_9bb3f520Address)
    staticcall sub_9bb3f520Address.0xeae4a08b with:
            gas gas_remaining wei
           args arg1, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if not ext_code.size(arg1):
            revert with 0, 'Address: delegate call to non-contract'
        mem[196 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[196 len 28]
        delegate arg1.mem[196 len 4] with:
             gas gas_remaining wei
            args mem[200]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 268 len 25] >> 56,
                            0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        if address(stor3608) != address(stor3608):
            revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
        if not ext_code.size(arg1):
            revert with 0, 'ERC1967: new implementation is not a contract'
        address(stor3608) = arg1
        emit Upgraded(arg1);
}

function getAllMembers() {
    if stor52.length > test266151307():
        revert with 0, 65
    mem[96] = stor52.length
    mem[64] = (32 * stor52.length) + 128
    if not stor52.length:
        idx = 0
        while idx < stor52.length:
            mem[0] = stor52[idx]
            mem[32] = 51
            if stor51[stor52[idx]].field_192:
                if idx >= stor52.length:
                    revert with 0, 50
                mem[0] = stor52[idx]
                mem[32] = 51
                _36 = mem[64]
                mem[64] = mem[64] + 96
                mem[_36] = stor51[stor52[idx]].field_0
                mem[_36 + 32] = stor51[stor52[idx]].field_160
                mem[_36 + 64] = bool(stor51[stor52[idx]].field_192)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _36
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _30 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _33:
            _56 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_56 + 60 len 4]
            mem[t + 64] = bool(mem[_56 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _30 + (96 * _33) + -mem[64] + 64
    mem[64] = (32 * stor52.length) + 224
    mem[(32 * stor52.length) + 128] = 0
    mem[(32 * stor52.length) + 160] = 0
    mem[(32 * stor52.length) + 192] = 0
    mem[128] = (32 * stor52.length) + 128
    s = 128
    idx = stor52.length
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor52.length) + 128] = 0
        mem[(32 * stor52.length) + 160] = 0
        mem[(32 * stor52.length) + 192] = 0
        mem[s + 32] = (32 * stor52.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor52.length:
        mem[0] = stor52[idx]
        mem[32] = 51
        if stor51[stor52[idx]].field_192:
            if idx >= stor52.length:
                revert with 0, 50
            mem[0] = stor52[idx]
            mem[32] = 51
            _67 = mem[64]
            mem[64] = mem[64] + 96
            mem[_67] = stor51[stor52[idx]].field_0
            mem[_67 + 32] = stor51[stor52[idx]].field_160
            mem[_67 + 64] = bool(stor51[stor52[idx]].field_192)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _67
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _64 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _64:
        _74 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_74 + 60 len 4]
        mem[t + 64] = bool(mem[_74 + 64])
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _61 + (96 * _64) + -mem[64] + 64
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not ext_code.size(arg1):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + 261 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + 261 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + 261 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 265]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 169 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 266]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 334 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
}

function initialize() {
    if uint8(stor0.field_8):
        stor51[address(msg.sender)].field_0 = msg.sender
        stor51[address(msg.sender)].field_160 = 1000
        stor51[address(msg.sender)].field_176 = 0
        stor51[address(msg.sender)].field_192 = 1
        stor52.length++
        stor46BD[stor52.length] = msg.sender
        stor51[address(msg.sender)].field_0 = msg.sender
        stor51[address(msg.sender)].field_160 = 1000
        stor51[address(msg.sender)].field_176 = 0
        stor51[address(msg.sender)].field_192 = 1
        stor52.length++
        stor46BD[stor52.length] = msg.sender
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor51[address(msg.sender)].field_0 = msg.sender
            stor51[address(msg.sender)].field_160 = 1000
            stor51[address(msg.sender)].field_176 = 0
            stor51[address(msg.sender)].field_192 = 1
            stor52.length++
            stor46BD[stor52.length] = msg.sender
            stor51[address(msg.sender)].field_0 = msg.sender
            stor51[address(msg.sender)].field_160 = 1000
            stor51[address(msg.sender)].field_176 = 0
            stor51[address(msg.sender)].field_192 = 1
            stor52.length++
            stor46BD[stor52.length] = msg.sender
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor51[address(msg.sender)].field_0 = msg.sender
                stor51[address(msg.sender)].field_160 = 1000
                stor51[address(msg.sender)].field_176 = 0
                stor51[address(msg.sender)].field_192 = 1
                stor52.length++
                stor46BD[stor52.length] = msg.sender
                stor51[address(msg.sender)].field_0 = msg.sender
                stor51[address(msg.sender)].field_160 = 1000
                stor51[address(msg.sender)].field_176 = 0
                stor51[address(msg.sender)].field_192 = 1
                stor52.length++
                stor46BD[stor52.length] = msg.sender
            else:
                uint16(stor0.field_0) = 257
                stor51[address(msg.sender)].field_0 = msg.sender
                stor51[address(msg.sender)].field_160 = 1000
                stor51[address(msg.sender)].field_176 = 0
                stor51[address(msg.sender)].field_192 = 1
                stor52.length++
                stor46BD[stor52.length] = msg.sender
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor51[address(msg.sender)].field_0 = msg.sender
                    stor51[address(msg.sender)].field_160 = 1000
                    stor51[address(msg.sender)].field_176 = 0
                    stor51[address(msg.sender)].field_192 = 1
                    stor52.length++
                    stor46BD[stor52.length] = msg.sender
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor51[address(msg.sender)].field_0 = msg.sender
                        stor51[address(msg.sender)].field_160 = 1000
                        stor51[address(msg.sender)].field_176 = 0
                        stor51[address(msg.sender)].field_192 = 1
                        stor52.length++
                        stor46BD[stor52.length] = msg.sender
                    else:
                        uint16(stor0.field_0) = 257
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor51[address(msg.sender)].field_0 = msg.sender
                            stor51[address(msg.sender)].field_160 = 1000
                            stor51[address(msg.sender)].field_176 = 0
                            stor51[address(msg.sender)].field_192 = 1
                            stor52.length++
                            stor46BD[stor52.length] = msg.sender
                        else:
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor51[address(msg.sender)].field_0 = msg.sender
                                stor51[address(msg.sender)].field_160 = 1000
                                stor51[address(msg.sender)].field_176 = 0
                                stor51[address(msg.sender)].field_192 = 1
                                stor52.length++
                                stor46BD[stor52.length] = msg.sender
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    stor51[address(msg.sender)].field_0 = msg.sender
                                    stor51[address(msg.sender)].field_160 = 1000
                                    stor51[address(msg.sender)].field_176 = 0
                                    stor51[address(msg.sender)].field_192 = 1
                                    stor52.length++
                                    stor46BD[stor52.length] = msg.sender
                                else:
                                    uint16(stor0.field_0) = 257
                                    stor51[address(msg.sender)].field_0 = msg.sender
                                    stor51[address(msg.sender)].field_160 = 1000
                                    stor51[address(msg.sender)].field_176 = 0
                                    stor51[address(msg.sender)].field_192 = 1
                                    stor52.length++
                                    stor46BD[stor52.length] = msg.sender
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
}



}
