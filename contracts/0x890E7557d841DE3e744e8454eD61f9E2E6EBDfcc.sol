contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
mapping of struct sub_ac0e3952;
mapping of uint8 stor4;

function owner() payable {
    return owner
}

function sub_ac0e3952(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_ac0e3952[arg1].field_0), 
           sub_ac0e3952[arg1].field_256,
           sub_ac0e3952[arg1].field_512,
           sub_ac0e3952[arg1].field_768,
           sub_ac0e3952[arg1].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function nonce() payable {
    require ext_code.size(stor2)
    staticcall stor2.nonce(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 1
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
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
    revert with 0, 'not supported'
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(sub_ac0e3952[arg1].field_768)
    staticcall sub_ac0e3952[arg1].field_768.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ac0e3952[arg1].field_512)
    staticcall sub_ac0e3952[arg1].field_512.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_ac0e3952[arg1].field_512)
    call sub_ac0e3952[arg1].field_512.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2 * ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_ac0e3952[arg1].field_768)
    call sub_ac0e3952[arg1].field_768.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_b209fcde(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_ac0e3952[arg1].field_0:
        revert with 0, 'already exist'
    if ceil32(arg3.length) <= arg3.length:
        create contract with 0 wei
                        code: code.data[5363 len 4234], Array(len=ceil32(arg3.length) + 96, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256)
    else:
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 4588] = arg4.length
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 4620 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 4620] = 0
        create contract with 0 wei
                        code: code.data[5363 len 4234], Array(len=ceil32(arg3.length) + 96, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 4620 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ac0e3952[arg1].field_0 = 1
    sub_ac0e3952[arg1].field_256 = arg1
    sub_ac0e3952[arg1].field_512 = uint64(arg2) << 96
    sub_ac0e3952[arg1].field_768 = address(create.new_address)
    sub_ac0e3952[arg1].field_1024 = arg5
}

function gems(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xa1f0406d00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0xa1f0406d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _89 = uint32(arg1), mem[132 len 28]
        require uint32(arg1), mem[132 len 28] <= test266151307()
        require uint32(arg1), mem[132 len 28] + 127 < return_data.size + 96
        _91 = mem[uint32(arg1), mem[132 len 28] + 96]
        if mem[uint32(arg1), mem[132 len 28] + 96] > test266151307():
            revert with 0, 65
        _93 = mem[64]
        if mem[64] + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1
        mem[_93] = _91
        require _89 + _91 + 32 <= return_data.size
        mem[_93 + 32 len ceil32(_91)] = mem[_89 + 128 len ceil32(_91)]
        if ceil32(_91) <= _91:
            _171 = mem[160]
            _172 = mem[192]
            _173 = mem[224]
            _174 = mem[256]
            _175 = mem[288]
            require mem[288] == mem[300 len 20]
            _191 = mem[320]
            require mem[320] == mem[332 len 20]
            _195 = mem[352]
            require mem[352] == mem[364 len 20]
            _199 = mem[64]
            mem[mem[64]] = 288
            mem[mem[64] + 288] = _5
            mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 32] = ceil32(_5) + 320
                mem[ceil32(_5) + mem[64] + 320] = _91
                mem[ceil32(_5) + mem[64] + 352 len ceil32(_91)] = mem[_93 + 32 len ceil32(_91)]
                if ceil32(_91) > _91:
                    mem[ceil32(_5) + mem[64] + _91 + 352] = 0
                mem[mem[64] + 64] = _171
            else:
                mem[mem[64] + _5 + 320] = 0
                mem[mem[64] + 32] = ceil32(_5) + 320
                mem[ceil32(_5) + _199 + 320] = _91
                mem[ceil32(_5) + _199 + 352 len ceil32(_91)] = mem[_93 + 32 len ceil32(_91)]
                if ceil32(_91) > _91:
                    mem[ceil32(_5) + _199 + _91 + 352] = 0
                mem[_199 + 64] = _171
            mem[_199 + 96] = _172
            mem[_199 + 128] = _173
            mem[_199 + 160] = _174
            mem[_199 + 192] = address(_175)
            mem[_199 + 224] = address(_191)
            mem[_199 + 256] = address(_195)
            return memory
              from mem[64]
               len ceil32(_91) + ceil32(_5) + _199 + -mem[64] + 352
        mem[_93 + _91 + 32] = 0
        _181 = mem[160]
        _182 = mem[192]
        _183 = mem[224]
        _184 = mem[256]
        _185 = mem[288]
        require mem[288] == mem[300 len 20]
        _193 = mem[320]
        require mem[320] == mem[332 len 20]
        _197 = mem[352]
        require mem[352] == mem[364 len 20]
        _201 = mem[64]
        mem[mem[64]] = 288
        mem[mem[64] + 288] = _5
        mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 32] = ceil32(_5) + 320
            mem[ceil32(_5) + mem[64] + 320] = _91
            mem[ceil32(_5) + mem[64] + 352 len ceil32(_91)] = mem[_93 + 32 len ceil32(_91)]
            if ceil32(_91) > _91:
                mem[ceil32(_5) + mem[64] + _91 + 352] = 0
            mem[mem[64] + 64] = _181
        else:
            mem[mem[64] + _5 + 320] = 0
            mem[mem[64] + 32] = ceil32(_5) + 320
            mem[ceil32(_5) + _201 + 320] = _91
            mem[ceil32(_5) + _201 + 352 len ceil32(_91)] = mem[_93 + 32 len ceil32(_91)]
            if ceil32(_91) > _91:
                mem[ceil32(_5) + _201 + _91 + 352] = 0
            mem[_201 + 64] = _181
        mem[_201 + 96] = _182
        mem[_201 + 128] = _183
        mem[_201 + 160] = _184
        mem[_201 + 192] = address(_185)
        mem[_201 + 224] = address(_193)
        mem[_201 + 256] = address(_197)
        return memory
          from mem[64]
           len ceil32(_91) + ceil32(_5) + _201 + -mem[64] + 352
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _90 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= test266151307()
    require uint32(arg1), mem[132 len 28] + 127 < return_data.size + 96
    _92 = mem[uint32(arg1), mem[132 len 28] + 96]
    if mem[uint32(arg1), mem[132 len 28] + 96] > test266151307():
        revert with 0, 65
    _94 = mem[64]
    if mem[64] + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1
    mem[_94] = _92
    require _90 + _92 + 32 <= return_data.size
    mem[_94 + 32 len ceil32(_92)] = mem[_90 + 128 len ceil32(_92)]
    if ceil32(_92) <= _92:
        _176 = mem[160]
        _177 = mem[192]
        _178 = mem[224]
        _179 = mem[256]
        _180 = mem[288]
        require mem[288] == mem[300 len 20]
        _192 = mem[320]
        require mem[320] == mem[332 len 20]
        _196 = mem[352]
        require mem[352] == mem[364 len 20]
        _200 = mem[64]
        mem[mem[64]] = 288
        mem[mem[64] + 288] = _5
        mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 32] = ceil32(_5) + 320
            mem[ceil32(_5) + mem[64] + 320] = _92
            mem[ceil32(_5) + mem[64] + 352 len ceil32(_92)] = mem[_94 + 32 len ceil32(_92)]
            if ceil32(_92) > _92:
                mem[ceil32(_5) + mem[64] + _92 + 352] = 0
            mem[mem[64] + 64] = _176
        else:
            mem[mem[64] + _5 + 320] = 0
            mem[mem[64] + 32] = ceil32(_5) + 320
            mem[ceil32(_5) + _200 + 320] = _92
            mem[ceil32(_5) + _200 + 352 len ceil32(_92)] = mem[_94 + 32 len ceil32(_92)]
            if ceil32(_92) > _92:
                mem[ceil32(_5) + _200 + _92 + 352] = 0
            mem[_200 + 64] = _176
        mem[_200 + 96] = _177
        mem[_200 + 128] = _178
        mem[_200 + 160] = _179
        mem[_200 + 192] = address(_180)
        mem[_200 + 224] = address(_192)
        mem[_200 + 256] = address(_196)
        return memory
          from mem[64]
           len ceil32(_92) + ceil32(_5) + _200 + -mem[64] + 352
    mem[_94 + _92 + 32] = 0
    _186 = mem[160]
    _187 = mem[192]
    _188 = mem[224]
    _189 = mem[256]
    _190 = mem[288]
    require mem[288] == mem[300 len 20]
    _194 = mem[320]
    require mem[320] == mem[332 len 20]
    _198 = mem[352]
    require mem[352] == mem[364 len 20]
    _202 = mem[64]
    mem[mem[64]] = 288
    mem[mem[64] + 288] = _5
    mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64] + 32] = ceil32(_5) + 320
        mem[ceil32(_5) + mem[64] + 320] = _92
        mem[ceil32(_5) + mem[64] + 352 len ceil32(_92)] = mem[_94 + 32 len ceil32(_92)]
        if ceil32(_92) > _92:
            mem[ceil32(_5) + mem[64] + _92 + 352] = 0
        mem[mem[64] + 64] = _186
    else:
        mem[mem[64] + _5 + 320] = 0
        mem[mem[64] + 32] = ceil32(_5) + 320
        mem[ceil32(_5) + _202 + 320] = _92
        mem[ceil32(_5) + _202 + 352 len ceil32(_92)] = mem[_94 + 32 len ceil32(_92)]
        if ceil32(_92) > _92:
            mem[ceil32(_5) + _202 + _92 + 352] = 0
        mem[_202 + 64] = _186
    mem[_202 + 96] = _187
    mem[_202 + 128] = _188
    mem[_202 + 160] = _189
    mem[_202 + 192] = address(_190)
    mem[_202 + 224] = address(_194)
    mem[_202 + 256] = address(_198)
    return memory
      from mem[64]
       len ceil32(_92) + ceil32(_5) + _202 + -mem[64] + 352
}

function mine(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4[arg2]:
        revert with 0, 'salt used'
    mem[0] = arg2
    stor4[arg2] = 1
    mem[100] = arg1
    mem[132] = arg2
    require ext_code.size(stor2)
    staticcall stor2.luck(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xa1f0406d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0xa1f0406d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 288
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require _12 + _13 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)] = mem[ceil32(return_data.size) + _12 + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        _117 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
        require uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] <= test266151307()
        require ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _119 = mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96]
        if mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96] > test266151307():
            revert with 0, 65
        _121 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1
        mem[_121] = mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96]
        require _117 + _119 + 32 <= return_data.size
        mem[_121 + 32 len ceil32(_119)] = mem[ceil32(return_data.size) + _117 + 128 len ceil32(_119)]
        if ceil32(_119) <= _119:
            require mem[ceil32(return_data.size) + 288] == mem[ceil32(return_data.size) + 300 len 20]
            require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 332 len 20]
            require mem[ceil32(return_data.size) + 352] == mem[ceil32(return_data.size) + 364 len 20]
            if not mem[ceil32(return_data.size) + 192]:
                revert with 0, 18
            if ext_call.return_data[0] >= -1 / mem[ceil32(return_data.size) + 192]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 > !(-1 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_ac0e3952[arg1].field_768)
                call sub_ac0e3952[arg1].field_768.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -1 / ext_call.return_data[0]
            else:
                require ext_code.size(stor2)
                call stor2.mine(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor2)
                call stor2.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), sub_ac0e3952[arg1].field_512, arg1, mem[_267], 160, 2, 0x3078000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 > !sub_ac0e3952[arg1].field_1024:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if sub_ac0e3952[arg1].field_1024 > !(-1 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_ac0e3952[arg1].field_768)
                call sub_ac0e3952[arg1].field_768.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_ac0e3952[arg1].field_1024 + (-1 / ext_call.return_data[0])
        else:
            mem[_121 + _119 + 32] = 0
            require mem[ceil32(return_data.size) + 288] == mem[ceil32(return_data.size) + 300 len 20]
            require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 332 len 20]
            require mem[ceil32(return_data.size) + 352] == mem[ceil32(return_data.size) + 364 len 20]
            if not mem[ceil32(return_data.size) + 192]:
                revert with 0, 18
            if ext_call.return_data[0] >= -1 / mem[ceil32(return_data.size) + 192]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 > !(-1 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_ac0e3952[arg1].field_768)
                call sub_ac0e3952[arg1].field_768.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -1 / ext_call.return_data[0]
            else:
                require ext_code.size(stor2)
                call stor2.mine(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor2)
                call stor2.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), sub_ac0e3952[arg1].field_512, arg1, mem[_269], 160, 2, 0x3078000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 > !sub_ac0e3952[arg1].field_1024:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if sub_ac0e3952[arg1].field_1024 > !(-1 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_ac0e3952[arg1].field_768)
                call sub_ac0e3952[arg1].field_768.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_ac0e3952[arg1].field_1024 + (-1 / ext_call.return_data[0])
    else:
        mem[(2 * ceil32(return_data.size)) + _13 + 128] = 0
        _118 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
        require uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] <= test266151307()
        require ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _120 = mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96]
        if mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96] > test266151307():
            revert with 0, 65
        _122 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1
        mem[_122] = mem[ceil32(return_data.size) + uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] + 96]
        require _118 + _120 + 32 <= return_data.size
        mem[_122 + 32 len ceil32(_120)] = mem[ceil32(return_data.size) + _118 + 128 len ceil32(_120)]
        if ceil32(_120) <= _120:
            require mem[ceil32(return_data.size) + 288] == mem[ceil32(return_data.size) + 300 len 20]
            require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 332 len 20]
            require mem[ceil32(return_data.size) + 352] == mem[ceil32(return_data.size) + 364 len 20]
            if not mem[ceil32(return_data.size) + 192]:
                revert with 0, 18
            if ext_call.return_data[0] >= -1 / mem[ceil32(return_data.size) + 192]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 > !(-1 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_ac0e3952[arg1].field_768)
                call sub_ac0e3952[arg1].field_768.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -1 / ext_call.return_data[0]
            else:
                require ext_code.size(stor2)
                call stor2.mine(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor2)
                call stor2.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), sub_ac0e3952[arg1].field_512, arg1, mem[_268], 160, 2, 0x3078000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 > !sub_ac0e3952[arg1].field_1024:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if sub_ac0e3952[arg1].field_1024 > !(-1 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_ac0e3952[arg1].field_768)
                call sub_ac0e3952[arg1].field_768.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_ac0e3952[arg1].field_1024 + (-1 / ext_call.return_data[0])
        else:
            mem[_122 + _120 + 32] = 0
            require mem[ceil32(return_data.size) + 288] == mem[ceil32(return_data.size) + 300 len 20]
            require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 332 len 20]
            require mem[ceil32(return_data.size) + 352] == mem[ceil32(return_data.size) + 364 len 20]
            if not mem[ceil32(return_data.size) + 192]:
                revert with 0, 18
            if ext_call.return_data[0] >= -1 / mem[ceil32(return_data.size) + 192]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 > !(-1 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_ac0e3952[arg1].field_768)
                call sub_ac0e3952[arg1].field_768.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -1 / ext_call.return_data[0]
            else:
                require ext_code.size(stor2)
                call stor2.mine(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg1
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor2)
                call stor2.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), sub_ac0e3952[arg1].field_512, arg1, mem[_270], 160, 2, 0x3078000000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 > !sub_ac0e3952[arg1].field_1024:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if sub_ac0e3952[arg1].field_1024 > !(-1 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_ac0e3952[arg1].field_768)
                call sub_ac0e3952[arg1].field_768.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_ac0e3952[arg1].field_1024 + (-1 / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
