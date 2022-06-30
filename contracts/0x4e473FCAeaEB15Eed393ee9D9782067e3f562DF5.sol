contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
mapping of uint8 stor151;
mapping of uint8 stor152;
mapping of uint8 stor153;
mapping of struct sub_79a6d51f;
uint8 emergencyShutdown;
uint32 stor155;
uint32 sub_e35d1653; offset 8
uint32 sub_e17ddc41; offset 40
uint32 initialRound; offset 72
uint32 lastRound; offset 104
address stor155; offset 104
address sub_11bbedb7Address;
uint8 stor157;
uint256 stor157;
uint256 stor158;

function sub_11bbedb7(?) payable {
    return sub_11bbedb7Address
}

function initialRound() payable {
    return initialRound
}

function emergencyShutdown() payable {
    return bool(emergencyShutdown)
}

function paused() payable {
    return bool(paused)
}

function sub_79a6d51f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return sub_79a6d51f[arg1].field_0, sub_79a6d51f[arg1].field_0, sub_79a6d51f[arg1].field_0, sub_79a6d51f[arg1].field_96
}

function lastRound() payable {
    return lastRound
}

function owner() payable {
    return owner
}

function isBanned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor153[address(arg1)])
}

function cache(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor151[arg1])
}

function sub_a8719e00(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    return bool(stor152[arg1][arg2])
}

function isRelay(uint32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor152[arg1 << 224][address(arg2)])
}

function sub_e17ddc41(?) payable {
    return sub_e17ddc41
}

function sub_e35d1653(?) payable {
    return sub_e35d1653
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor153[arg1])
}

function _fallback() payable {
    revert
}

function sub_6399e834(?) payable {
    return ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor157', 157))))), stor158
}

function isRoundRotten(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (block.timestamp > sub_79a6d51f[arg1 << 224].field_32)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function updateRoundTTL(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e17ddc41 = arg1
    emit UpdateRoundTTL(arg1);
}

function setRoundSubmitter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_11bbedb7Address = arg1
    emit UpdateRoundSubmitter(arg1);
}

function updateMinimumRequiredSignatures(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e35d1653 = arg1
    emit UpdateMinimumRequiredSignatures(arg1);
}

function sub_87f24b78(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 == ('signextend', 0, ('param', 'arg1'))
    emit 0xae1c27ed: ('signextend', 0, ('param', 'arg1')), arg2
    uint8(stor157) = uint8(('signextend', 0, ('param', 'arg1')))
    stor158 = arg2
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

function sub_3b1e8156(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 153
        stor153[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = 1
        emit BanRelay(1, address(cd[((32 * idx) + cd[4] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_56db6fff(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 153
        stor153[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = 0
        emit BanRelay(0, address(cd[((32 * idx) + cd[4] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4d6e855e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 158] = sha3(arg1[all])
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 60
    if arg2.length != 65:
        return 0
    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 193, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 193, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32))), 0) - 256 >= 27:
        return 0
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1[all])), 27, mem[ceil32(ceil32(arg1.length)) + 129], mem[ceil32(ceil32(arg1.length)) + 161]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_4145a9e0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == uint32(arg2)
    if sub_11bbedb7Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: sender not round submitter'
    if 1 > -lastRound + test266151307():
        revert with 0, 17
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 1 > -uint32(2 * arg1.length / 3) + test266151307():
        revert with 0, 17
    mem[(32 * arg1.length) + 128] = uint32(arg2)
    if uint32(arg2) > -sub_e17ddc41 + test266151307():
        revert with 0, 17
    sub_79a6d51f[uint32(stor155.field_104) + 1 << 224].field_0 = uint32(arg2)
    sub_79a6d51f[uint32(stor155.field_104) + 1 << 224].field_32 = uint32(sub_e17ddc41 + uint32(arg2))
    sub_79a6d51f[uint32(stor155.field_104) + 1 << 224].field_64 = uint32(arg1.length)
    if uint32(uint32(2 * arg1.length / 3) + 1) < sub_e35d1653:
        sub_79a6d51f[uint32(stor155.field_104) + 1 << 224].field_96 = sub_e35d1653
        emit 0x640133a6: 0, sub_e17ddc41 + uint32(arg2) << 224, arg1.length << 224, sub_e35d1653, uint32(lastRound + 1)
    else:
        sub_79a6d51f[uint32(stor155.field_104) + 1 << 224].field_96 = uint32(uint32(2 * arg1.length / 3) + 1)
        emit 0x640133a6: 0, sub_e17ddc41 + uint32(arg2) << 224, arg1.length << 224, uint32(uint32(2 * arg1.length / 3) + 1), uint32(lastRound + 1)
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(lastRound + 1 << 224, 152)
        stor152[uint32(stor155.field_104) + 1 << 224][address(mem[(32 * idx) + 128])] = 1
        emit RoundRelay(uint32(lastRound + 1), mem[(32 * idx) + 140 len 20]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if lastRound == test266151307():
        revert with 0, 17
    lastRound = uint32(lastRound + 1)
}

function sub_b91f4bbf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = 96
    mem[ceil32(ceil32(arg1.length)) + 193] = 0
    mem[ceil32(ceil32(arg1.length)) + 225] = 0
    mem[ceil32(ceil32(arg1.length)) + 257] = 0
    mem[ceil32(ceil32(arg1.length)) + 289] = 0
    mem[ceil32(ceil32(arg1.length)) + 321] = 0
    mem[ceil32(ceil32(arg1.length)) + 353] = 0
    require arg1.length >= 32
    require mem[128] <= test266151307()
    require arg1.length - mem[128] >= 288
    if not bool(ceil32(ceil32(arg1.length)) + 673 <= test266151307()):
        revert with 0, 65
    require mem[mem[128] + 128] == mem[mem[128] + 152 len 8]
    mem[ceil32(ceil32(arg1.length)) + 385] = mem[mem[128] + 128]
    require mem[mem[128] + 160] == mem[mem[128] + 188 len 4]
    mem[ceil32(ceil32(arg1.length)) + 417] = mem[mem[128] + 160]
    _8 = mem[mem[128] + 192]
    require mem[mem[128] + 192] <= test266151307()
    require mem[128] + mem[mem[128] + 192] + 159 < arg1.length + 128
    _9 = mem[mem[128] + mem[mem[128] + 192] + 128]
    if mem[mem[128] + mem[mem[128] + 192] + 128] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[128] + mem[mem[128] + 192] + 128])) + 674 < 673 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[mem[128] + mem[mem[128] + 192] + 128])) + 674 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[mem[128] + mem[mem[128] + 192] + 128])) + 674
    mem[ceil32(ceil32(arg1.length)) + 673] = mem[mem[128] + mem[mem[128] + 192] + 128]
    require mem[128] + _8 + _9 + 64 <= arg1.length + 32
    mem[ceil32(ceil32(arg1.length)) + 705 len ceil32(_9)] = mem[mem[128] + _8 + 160 len ceil32(_9)]
    if ceil32(_9) <= _9:
        mem[ceil32(ceil32(arg1.length)) + 449] = ceil32(ceil32(arg1.length)) + 673
        require mem[mem[128] + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('mem', ('range', 128, 32))), 32)))
        mem[ceil32(ceil32(arg1.length)) + 481] = mem[mem[128] + 224]
        mem[ceil32(ceil32(arg1.length)) + 513] = mem[mem[128] + 256]
        require mem[mem[128] + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('mem', ('range', 128, 32))), 32)))
        mem[ceil32(ceil32(arg1.length)) + 545] = mem[mem[128] + 288]
        mem[ceil32(ceil32(arg1.length)) + 577] = mem[mem[128] + 320]
        require mem[mem[128] + 352] == mem[mem[128] + 364 len 20]
        mem[ceil32(ceil32(arg1.length)) + 609] = mem[mem[128] + 352]
        require mem[mem[128] + 384] == mem[mem[128] + 412 len 4]
        mem[ceil32(ceil32(arg1.length)) + 641] = mem[mem[128] + 384]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 409 len 8]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 445 len 4]
        mem[mem[64] + 96] = 288
        _83 = mem[ceil32(ceil32(arg1.length)) + 673]
        mem[mem[64] + 320] = mem[ceil32(ceil32(arg1.length)) + 673]
        mem[mem[64] + 352 len ceil32(_83)] = mem[ceil32(ceil32(arg1.length)) + 705 len ceil32(_83)]
        if ceil32(_83) > _83:
            mem[mem[64] + _83 + 352] = 0
        mem[mem[64] + 128] = ('signextend', 0, ('mem', ('range', ('add', 481, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
        mem[mem[64] + 160] = mem[ceil32(ceil32(arg1.length)) + 513]
        mem[mem[64] + 192] = ('signextend', 0, ('mem', ('range', ('add', 545, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
        mem[mem[64] + 224] = mem[ceil32(ceil32(arg1.length)) + 577]
        mem[mem[64] + 256] = mem[ceil32(ceil32(arg1.length)) + 621 len 20]
        mem[mem[64] + 288] = mem[ceil32(ceil32(arg1.length)) + 669 len 4]
        return 32, mem[mem[64] + 32 len 64], 288, mem[mem[64] + 128 len ceil32(_83) + 224]
    mem[ceil32(ceil32(arg1.length)) + _9 + 705] = 0
    mem[ceil32(ceil32(arg1.length)) + 449] = ceil32(ceil32(arg1.length)) + 673
    require mem[mem[128] + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('mem', ('range', 128, 32))), 32)))
    mem[ceil32(ceil32(arg1.length)) + 481] = mem[mem[128] + 224]
    mem[ceil32(ceil32(arg1.length)) + 513] = mem[mem[128] + 256]
    require mem[mem[128] + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('mem', ('range', 128, 32))), 32)))
    mem[ceil32(ceil32(arg1.length)) + 545] = mem[mem[128] + 288]
    mem[ceil32(ceil32(arg1.length)) + 577] = mem[mem[128] + 320]
    require mem[mem[128] + 352] == mem[mem[128] + 364 len 20]
    mem[ceil32(ceil32(arg1.length)) + 609] = mem[mem[128] + 352]
    require mem[mem[128] + 384] == mem[mem[128] + 412 len 4]
    mem[ceil32(ceil32(arg1.length)) + 641] = mem[mem[128] + 384]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + 409 len 8]
    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 445 len 4]
    mem[mem[64] + 96] = 288
    _86 = mem[ceil32(ceil32(arg1.length)) + 673]
    mem[mem[64] + 320] = mem[ceil32(ceil32(arg1.length)) + 673]
    mem[mem[64] + 352 len ceil32(_86)] = mem[ceil32(ceil32(arg1.length)) + 705 len ceil32(_86)]
    if ceil32(_86) > _86:
        mem[mem[64] + _86 + 352] = 0
    mem[mem[64] + 128] = ('signextend', 0, ('mem', ('range', ('add', 481, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
    mem[mem[64] + 160] = mem[ceil32(ceil32(arg1.length)) + 513]
    mem[mem[64] + 192] = ('signextend', 0, ('mem', ('range', ('add', 545, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
    mem[mem[64] + 224] = mem[ceil32(ceil32(arg1.length)) + 577]
    mem[mem[64] + 256] = mem[ceil32(ceil32(arg1.length)) + 621 len 20]
    mem[mem[64] + 288] = mem[ceil32(ceil32(arg1.length)) + 669 len 4]
    return 32, mem[mem[64] + 32 len 64], 288, mem[mem[64] + 128 len ceil32(_86) + 224]
}

function sub_8a2ef9d4(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == uint32(arg3)
    require arg4 == uint32(arg4)
    require arg5 == uint32(arg5)
    require arg6 == uint32(arg6)
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + (32 * arg7.length) + 36 <= calldata.size
    if uint8(stor0.field_8):
        paused = 0
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        paused = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(owner, msg.sender);
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(owner, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(owner, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = address(arg1)
    emit OwnershipTransferred(owner, address(arg1));
    sub_11bbedb7Address = address(arg2)
    emit UpdateRoundSubmitter(address(arg2));
    sub_e35d1653 = uint32(arg3)
    emit UpdateMinimumRequiredSignatures(uint32(arg3));
    sub_e17ddc41 = uint32(arg4)
    emit UpdateRoundTTL(uint32(arg4));
    if uint32(arg6) < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: initial round end should be in the future'
    initialRound = uint32(arg5)
    mem[128 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    if arg7.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 1 > -uint32(2 * arg7.length / 3) + test266151307():
        revert with 0, 17
    mem[(32 * arg7.length) + 128] = uint32(arg6)
    if uint32(arg6) > -sub_e17ddc41 + test266151307():
        revert with 0, 17
    sub_79a6d51f[uint32(stor155.field_0)].field_0 = uint32(arg6)
    sub_79a6d51f[uint32(stor155.field_0)].field_32 = uint32(sub_e17ddc41 + uint32(arg6))
    sub_79a6d51f[uint32(stor155.field_0)].field_64 = uint32(arg7.length)
    if uint32(uint32(2 * arg7.length / 3) + 1) < sub_e35d1653:
        sub_79a6d51f[uint32(stor155.field_0)].field_96 = sub_e35d1653
        emit 0x640133a6: 0, sub_e17ddc41 + uint32(arg6) << 224, arg7.length << 224, sub_e35d1653, initialRound
    else:
        sub_79a6d51f[uint32(stor155.field_0)].field_96 = uint32(uint32(2 * arg7.length / 3) + 1)
        emit 0x640133a6: 0, sub_e17ddc41 + uint32(arg6) << 224, arg7.length << 224, uint32(uint32(2 * arg7.length / 3) + 1), initialRound
    idx = 0
    while idx < arg7.length:
        if idx >= arg7.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(uint32(stor155.field_0), 152)
        stor152[uint32(stor155.field_0)][address(mem[(32 * idx) + 128])] = 1
        emit RoundRelay(initialRound, mem[(32 * idx) + 140 len 20]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    Mask(152, 0, stor155.field_104) = initialRound
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_20fb2ac8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 32
    _3 = mem[128]
    require mem[128] <= test266151307()
    require arg1.length - mem[128] >= 288
    if not bool(ceil32(ceil32(arg1.length)) + 385 <= test266151307()):
        revert with 0, 65
    require mem[mem[128] + 128] == mem[mem[128] + 152 len 8]
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[mem[128] + 128]
    require mem[_3 + 160] == mem[_3 + 188 len 4]
    mem[ceil32(ceil32(arg1.length)) + 129] = mem[_3 + 160]
    _7 = mem[_3 + 192]
    require mem[_3 + 192] <= test266151307()
    require _3 + mem[_3 + 192] + 159 < arg1.length + 128
    _8 = mem[_3 + mem[_3 + 192] + 128]
    if mem[_3 + mem[_3 + 192] + 128] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386 < 385 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386
    mem[ceil32(ceil32(arg1.length)) + 385] = mem[_3 + mem[_3 + 192] + 128]
    require _3 + _7 + _8 + 64 <= arg1.length + 32
    mem[ceil32(ceil32(arg1.length)) + 417 len ceil32(_8)] = mem[_3 + _7 + 160 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[ceil32(ceil32(arg1.length)) + 161] = ceil32(ceil32(arg1.length)) + 385
        require mem[_3 + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('var', '_3')), 32)))
        mem[ceil32(ceil32(arg1.length)) + 193] = mem[_3 + 224]
        mem[ceil32(ceil32(arg1.length)) + 225] = mem[_3 + 256]
        require mem[_3 + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('var', '_3')), 32)))
        mem[ceil32(ceil32(arg1.length)) + 257] = mem[_3 + 288]
        mem[ceil32(ceil32(arg1.length)) + 289] = mem[_3 + 320]
        require mem[_3 + 352] == mem[_3 + 364 len 20]
        mem[ceil32(ceil32(arg1.length)) + 321] = mem[_3 + 352]
        require mem[_3 + 384] == mem[_3 + 412 len 4]
        mem[ceil32(ceil32(arg1.length)) + 353] = mem[_3 + 384]
        _61 = mem[ceil32(ceil32(arg1.length)) + 385]
        require mem[ceil32(ceil32(arg1.length)) + 385] >= 96
        _64 = mem[ceil32(ceil32(arg1.length)) + 417]
        require mem[ceil32(ceil32(arg1.length)) + 417] == mem[ceil32(ceil32(arg1.length)) + 445 len 4]
        _66 = mem[ceil32(ceil32(arg1.length)) + 449]
        require mem[ceil32(ceil32(arg1.length)) + 449] <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 385] + 417 > ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 448
        _68 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417] > test266151307():
            revert with 0, 65
        _70 = mem[64]
        if mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]) + 1 < mem[64] or mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]) + 1
        mem[_70] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]
        require _61 + 32 >= _66 + (32 * _68) + 64
        s = ceil32(ceil32(arg1.length)) + _66 + 449
        t = _70 + 32
        idx = 0
        while idx < _68:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _86 = mem[ceil32(ceil32(arg1.length)) + 481]
        require mem[ceil32(ceil32(arg1.length)) + 481] == mem[ceil32(ceil32(arg1.length)) + 509 len 4]
        _88 = mem[64]
        mem[mem[64]] = uint32(_64)
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = _68
        idx = 0
        s = mem[64] + 128
        t = _70 + 32
        while idx < _68:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = uint32(_86)
        return memory
          from mem[64]
           len _88 + (32 * _68) + -mem[64] + 128
    mem[ceil32(ceil32(arg1.length)) + _8 + 417] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = ceil32(ceil32(arg1.length)) + 385
    require mem[_3 + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('var', '_3')), 32)))
    mem[ceil32(ceil32(arg1.length)) + 193] = mem[_3 + 224]
    mem[ceil32(ceil32(arg1.length)) + 225] = mem[_3 + 256]
    require mem[_3 + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('var', '_3')), 32)))
    mem[ceil32(ceil32(arg1.length)) + 257] = mem[_3 + 288]
    mem[ceil32(ceil32(arg1.length)) + 289] = mem[_3 + 320]
    require mem[_3 + 352] == mem[_3 + 364 len 20]
    mem[ceil32(ceil32(arg1.length)) + 321] = mem[_3 + 352]
    require mem[_3 + 384] == mem[_3 + 412 len 4]
    mem[ceil32(ceil32(arg1.length)) + 353] = mem[_3 + 384]
    _63 = mem[ceil32(ceil32(arg1.length)) + 385]
    require mem[ceil32(ceil32(arg1.length)) + 385] >= 96
    _65 = mem[ceil32(ceil32(arg1.length)) + 417]
    require mem[ceil32(ceil32(arg1.length)) + 417] == mem[ceil32(ceil32(arg1.length)) + 445 len 4]
    _67 = mem[ceil32(ceil32(arg1.length)) + 449]
    require mem[ceil32(ceil32(arg1.length)) + 449] <= test266151307()
    require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 385] + 417 > ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 448
    _69 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]
    if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417] > test266151307():
        revert with 0, 65
    _71 = mem[64]
    if mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]) + 1 < mem[64] or mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]) + 1
    mem[_71] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449] + 417]
    require _63 + 32 >= _67 + (32 * _69) + 64
    s = ceil32(ceil32(arg1.length)) + _67 + 449
    t = _71 + 32
    idx = 0
    while idx < _69:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _87 = mem[ceil32(ceil32(arg1.length)) + 481]
    require mem[ceil32(ceil32(arg1.length)) + 481] == mem[ceil32(ceil32(arg1.length)) + 509 len 4]
    _89 = mem[64]
    mem[mem[64]] = uint32(_65)
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = _69
    idx = 0
    s = mem[64] + 128
    t = _71 + 32
    while idx < _69:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = uint32(_87)
    return memory
      from mem[64]
       len _89 + (32 * _69) + -mem[64] + 128
}

function sub_a40b9e73(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 4).length)) + 97 < 96 or ceil32(ceil32(('cd', 4).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or ceil32(ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 98
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(ceil32(('cd', 4).length)) + 129
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _109 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_109] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_109 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_109 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _109
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _107 = mem[96]
    require mem[96] >= 32
    _108 = mem[128]
    require mem[128] <= test266151307()
    require mem[96] - mem[128] >= 288
    _110 = mem[64]
    if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + 288
    require mem[mem[128] + 128] == mem[mem[128] + 152 len 8]
    mem[_110] = mem[mem[128] + 128]
    require mem[_108 + 160] == mem[_108 + 188 len 4]
    mem[_110 + 32] = mem[_108 + 160]
    _113 = mem[_108 + 192]
    require mem[_108 + 192] <= test266151307()
    require _108 + mem[_108 + 192] + 159 < _107 + 128
    _114 = mem[_108 + mem[_108 + 192] + 128]
    if mem[_108 + mem[_108 + 192] + 128] > test266151307():
        revert with 0, 65
    _115 = mem[64]
    if mem[64] + ceil32(ceil32(mem[_108 + mem[_108 + 192] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_108 + mem[_108 + 192] + 128])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[_108 + mem[_108 + 192] + 128])) + 1
    mem[_115] = mem[_108 + mem[_108 + 192] + 128]
    require _108 + _113 + _114 + 64 <= _107 + 32
    mem[_115 + 32 len ceil32(_114)] = mem[_108 + _113 + 160 len ceil32(_114)]
    if ceil32(_114) <= _114:
        mem[_110 + 64] = _115
        require mem[_108 + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('var', '_108')), 32)))
        mem[_110 + 96] = mem[_108 + 224]
        mem[_110 + 128] = mem[_108 + 256]
        require mem[_108 + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('var', '_108')), 32)))
        mem[_110 + 160] = mem[_108 + 288]
        mem[_110 + 192] = mem[_108 + 320]
        require mem[_108 + 352] == mem[_108 + 364 len 20]
        mem[_110 + 224] = mem[_108 + 352]
        require mem[_108 + 384] == mem[_108 + 412 len 4]
        mem[_110 + 256] = mem[_108 + 384]
        _224 = mem[_110 + 256]
        if mem[_110 + 284 len 4] < initialRound:
            return 1
        if mem[_110 + 284 len 4] > lastRound:
            return 2
        _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
        idx = 0
        s = 0
        t = 0
        while idx < _306:
            if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                revert with 0, 50
            _311 = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]
            _316 = sha3(mem[128 len mem[96]])
            _317 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = _316
            _318 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _320 = sha3(mem[_318 + 32 len mem[_318]])
            if mem[_311] != 65:
                if 0 <= address(t):
                    revert with 0, 'Bridge: signatures sequence wrong'
                mem[0] = 0
                mem[32] = sha3(_224 << 224, 152)
                if not stor152[_224 << 224][0]:
                    if idx == -1:
                        revert with 0, 17
                    _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                    idx = idx + 1
                    s = s
                    t = 0
                    continue 
                mem[0] = 0
                mem[32] = 153
                if stor153[0]:
                    if idx == -1:
                        revert with 0, 17
                    _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                    idx = idx + 1
                    s = s
                    t = 0
                    continue 
                if uint32(s) == test266151307():
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                idx = idx + 1
                s = uint32(s) + 1
                t = 0
                continue 
            _334 = mem[_311 + 32]
            _335 = mem[_311 + 64]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_311')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_311')), 32))), 0) - 256 >= 27:
                if 0 <= address(t):
                    revert with 0, 'Bridge: signatures sequence wrong'
                mem[0] = 0
                mem[32] = sha3(_224 << 224, 152)
                if not stor152[_224 << 224][0]:
                    if idx == -1:
                        revert with 0, 17
                    _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                    idx = idx + 1
                    s = s
                    t = 0
                    continue 
                mem[0] = 0
                mem[32] = 153
                if stor153[0]:
                    if idx == -1:
                        revert with 0, 17
                    _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                    idx = idx + 1
                    s = s
                    t = 0
                    continue 
                if uint32(s) == test266151307():
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                idx = idx + 1
                s = uint32(s) + 1
                t = 0
                continue 
            mem[_317 + 92] = 0
            mem[64] = _317 + 124
            mem[_317 + 124] = _320
            mem[_317 + 156] = 27
            mem[_317 + 188] = _334
            mem[_317 + 220] = _335
            signer = erecover(_320, 27, _334, _335) 
            mem[_317 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) <= address(t):
                revert with 0, 'Bridge: signatures sequence wrong'
            mem[0] = address(signer)
            mem[32] = sha3(_224 << 224, 152)
            if not stor152[_224 << 224][address(signer)]:
                if idx == -1:
                    revert with 0, 17
                _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                idx = idx + 1
                s = s
                t = signer
                continue 
            mem[0] = address(signer)
            mem[32] = 153
            if stor153[address(signer)]:
                if idx == -1:
                    revert with 0, 17
                _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                idx = idx + 1
                s = s
                t = signer
                continue 
            if uint32(s) == test266151307():
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _306 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            idx = idx + 1
            s = uint32(s) + 1
            t = signer
            continue 
        if uint32(s) < sub_79a6d51f[_224 << 224].field_96:
            return 3
        if block.timestamp > sub_79a6d51f[_224 << 224].field_32:
            return 4
    else:
        mem[_115 + _114 + 32] = 0
        mem[_110 + 64] = _115
        require mem[_108 + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('var', '_108')), 32)))
        mem[_110 + 96] = mem[_108 + 224]
        mem[_110 + 128] = mem[_108 + 256]
        require mem[_108 + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('var', '_108')), 32)))
        mem[_110 + 160] = mem[_108 + 288]
        mem[_110 + 192] = mem[_108 + 320]
        require mem[_108 + 352] == mem[_108 + 364 len 20]
        mem[_110 + 224] = mem[_108 + 352]
        require mem[_108 + 384] == mem[_108 + 412 len 4]
        mem[_110 + 256] = mem[_108 + 384]
        _225 = mem[_110 + 256]
        if mem[_110 + 284 len 4] < initialRound:
            return 1
        if mem[_110 + 284 len 4] > lastRound:
            return 2
        _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
        idx = 0
        s = 0
        t = 0
        while idx < _307:
            if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                revert with 0, 50
            _313 = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]
            _323 = sha3(mem[128 len mem[96]])
            _324 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = _323
            _325 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _327 = sha3(mem[_325 + 32 len mem[_325]])
            if mem[_313] != 65:
                if 0 <= address(t):
                    revert with 0, 'Bridge: signatures sequence wrong'
                mem[0] = 0
                mem[32] = sha3(_225 << 224, 152)
                if not stor152[_225 << 224][0]:
                    if idx == -1:
                        revert with 0, 17
                    _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                    idx = idx + 1
                    s = s
                    t = 0
                    continue 
                mem[0] = 0
                mem[32] = 153
                if stor153[0]:
                    if idx == -1:
                        revert with 0, 17
                    _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                    idx = idx + 1
                    s = s
                    t = 0
                    continue 
                if uint32(s) == test266151307():
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                idx = idx + 1
                s = uint32(s) + 1
                t = 0
                continue 
            _339 = mem[_313 + 32]
            _340 = mem[_313 + 64]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_313')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_313')), 32))), 0) - 256 >= 27:
                if 0 <= address(t):
                    revert with 0, 'Bridge: signatures sequence wrong'
                mem[0] = 0
                mem[32] = sha3(_225 << 224, 152)
                if not stor152[_225 << 224][0]:
                    if idx == -1:
                        revert with 0, 17
                    _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                    idx = idx + 1
                    s = s
                    t = 0
                    continue 
                mem[0] = 0
                mem[32] = 153
                if stor153[0]:
                    if idx == -1:
                        revert with 0, 17
                    _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                    idx = idx + 1
                    s = s
                    t = 0
                    continue 
                if uint32(s) == test266151307():
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                idx = idx + 1
                s = uint32(s) + 1
                t = 0
                continue 
            mem[_324 + 92] = 0
            mem[64] = _324 + 124
            mem[_324 + 124] = _327
            mem[_324 + 156] = 27
            mem[_324 + 188] = _339
            mem[_324 + 220] = _340
            signer = erecover(_327, 27, _339, _340) 
            mem[_324 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) <= address(t):
                revert with 0, 'Bridge: signatures sequence wrong'
            mem[0] = address(signer)
            mem[32] = sha3(_225 << 224, 152)
            if not stor152[_225 << 224][address(signer)]:
                if idx == -1:
                    revert with 0, 17
                _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                idx = idx + 1
                s = s
                t = signer
                continue 
            mem[0] = address(signer)
            mem[32] = 153
            if stor153[address(signer)]:
                if idx == -1:
                    revert with 0, 17
                _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                idx = idx + 1
                s = s
                t = signer
                continue 
            if uint32(s) == test266151307():
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _307 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            idx = idx + 1
            s = uint32(s) + 1
            t = signer
            continue 
        if uint32(s) < sub_79a6d51f[_225 << 224].field_96:
            return 3
        if block.timestamp > sub_79a6d51f[_225 << 224].field_32:
            return 4
    if not paused:
        return 0
    return 5
}

function sub_04f5b841(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    mem[ceil32(('cd', 4).length) + 160] = 32
    mem[ceil32(('cd', 4).length) + 192] = ('cd', 4).length
    mem[ceil32(('cd', 4).length) + 224 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
    if ceil32(('cd', 4).length) <= ('cd', 4).length:
        mem[ceil32(('cd', 4).length) + 128] = ceil32(('cd', 4).length) + 64
        _321 = sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])
        mem[32] = 151
        if stor151[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]]:
            mem[(2 * ceil32(('cd', 4).length)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(('cd', 4).length)) + 228] = 32
            mem[(2 * ceil32(('cd', 4).length)) + 260] = 27
            mem[(2 * ceil32(('cd', 4).length)) + 292] = 'Cache: payload already seen'
            revert with memory
              from (2 * ceil32(('cd', 4).length)) + 224
               len ceil32(('cd', 4).length) + 100
        mem[(2 * ceil32(('cd', 4).length)) + 224] = ('cd', 4).length
        mem[(2 * ceil32(('cd', 4).length)) + 256 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[(2 * ceil32(('cd', 4).length)) + ('cd', 4).length + 256] = 0
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        if floor32(('cd', 36).length) + 129 < 128 or (3 * ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 257 > test266151307():
            revert with 0, 65
        mem[64] = (3 * ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 257
        mem[(3 * ceil32(('cd', 4).length)) + 256] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (3 * ceil32(('cd', 4).length)) + 288
        while idx < ('cd', 36).length:
            require cd[36] + cd[s] + 67 < calldata.size
            if cd[(cd[36] + cd[s] + 36)] > test266151307():
                revert with 0, 65
            _691 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
            mem[_691] = cd[(cd[36] + cd[s] + 36)]
            require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
            mem[_691 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
            mem[_691 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
            mem[t] = _691
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _687 = mem[(2 * ceil32(('cd', 4).length)) + 224]
        require mem[(2 * ceil32(('cd', 4).length)) + 224] >= 32
        _689 = mem[(2 * ceil32(('cd', 4).length)) + 256]
        require mem[(2 * ceil32(('cd', 4).length)) + 256] <= test266151307()
        require mem[(2 * ceil32(('cd', 4).length)) + 224] - mem[(2 * ceil32(('cd', 4).length)) + 256] >= 288
        _693 = mem[64]
        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 288
        require mem[(2 * ceil32(('cd', 4).length)) + mem[(2 * ceil32(('cd', 4).length)) + 256] + 256] == mem[(2 * ceil32(('cd', 4).length)) + mem[(2 * ceil32(('cd', 4).length)) + 256] + 280 len 8]
        mem[_693] = mem[(2 * ceil32(('cd', 4).length)) + mem[(2 * ceil32(('cd', 4).length)) + 256] + 256]
        require mem[(2 * ceil32(('cd', 4).length)) + _689 + 288] == mem[(2 * ceil32(('cd', 4).length)) + _689 + 316 len 4]
        mem[_693 + 32] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 288]
        _699 = mem[(2 * ceil32(('cd', 4).length)) + _689 + 320]
        require mem[(2 * ceil32(('cd', 4).length)) + _689 + 320] <= test266151307()
        require (2 * ceil32(('cd', 4).length)) + _689 + mem[(2 * ceil32(('cd', 4).length)) + _689 + 320] + 287 < (2 * ceil32(('cd', 4).length)) + _687 + 256
        _701 = mem[(2 * ceil32(('cd', 4).length)) + _689 + mem[(2 * ceil32(('cd', 4).length)) + _689 + 320] + 256]
        if mem[(2 * ceil32(('cd', 4).length)) + _689 + mem[(2 * ceil32(('cd', 4).length)) + _689 + 320] + 256] > test266151307():
            revert with 0, 65
        _703 = mem[64]
        if mem[64] + ceil32(ceil32(mem[(2 * ceil32(('cd', 4).length)) + _689 + mem[(2 * ceil32(('cd', 4).length)) + _689 + 320] + 256])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(2 * ceil32(('cd', 4).length)) + _689 + mem[(2 * ceil32(('cd', 4).length)) + _689 + 320] + 256])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[(2 * ceil32(('cd', 4).length)) + _689 + mem[(2 * ceil32(('cd', 4).length)) + _689 + 320] + 256])) + 1
        mem[_703] = mem[(2 * ceil32(('cd', 4).length)) + _689 + mem[(2 * ceil32(('cd', 4).length)) + _689 + 320] + 256]
        require _689 + _699 + _701 + 64 <= _687 + 32
        mem[_703 + 32 len ceil32(_701)] = mem[(2 * ceil32(('cd', 4).length)) + _689 + _699 + 288 len ceil32(_701)]
        if ceil32(_701) <= _701:
            mem[_693 + 64] = _703
            require mem[(2 * ceil32(('cd', 4).length)) + _689 + 352] == ('signextend', 0, ('mem', ('range', ('add', 352, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('cd', 4))))), ('var', '_689')), 32)))
            mem[_693 + 96] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 352]
            mem[_693 + 128] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 384]
            require mem[(2 * ceil32(('cd', 4).length)) + _689 + 416] == ('signextend', 0, ('mem', ('range', ('add', 416, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('cd', 4))))), ('var', '_689')), 32)))
            mem[_693 + 160] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 416]
            mem[_693 + 192] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 448]
            require mem[(2 * ceil32(('cd', 4).length)) + _689 + 480] == mem[(2 * ceil32(('cd', 4).length)) + _689 + 492 len 20]
            mem[_693 + 224] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 480]
            require mem[(2 * ceil32(('cd', 4).length)) + _689 + 512] == mem[(2 * ceil32(('cd', 4).length)) + _689 + 540 len 4]
            mem[_693 + 256] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 512]
            _1097 = mem[_693 + 256]
            if mem[_693 + 284 len 4] < initialRound:
                revert with 0, 'Bridge: signatures verification failed'
            if mem[_693 + 284 len 4] > lastRound:
                revert with 0, 'Bridge: signatures verification failed'
            _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
            idx = 0
            s = 0
            t = 0
            while idx < _1701:
                if idx >= mem[(3 * ceil32(('cd', 4).length)) + 256]:
                    revert with 0, 50
                _1710 = mem[(32 * idx) + (3 * ceil32(('cd', 4).length)) + 288]
                _1719 = sha3(mem[(2 * ceil32(('cd', 4).length)) + 256 len mem[(2 * ceil32(('cd', 4).length)) + 224]])
                _1720 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = _1719
                _1721 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _1723 = sha3(mem[_1721 + 32 len mem[_1721]])
                if mem[_1710] != 65:
                    if 0 <= address(t):
                        revert with 0, 'Bridge: signatures sequence wrong'
                    mem[0] = 0
                    mem[32] = sha3(_1097 << 224, 152)
                    if not stor152[_1097 << 224][0]:
                        if idx == -1:
                            revert with 0, 17
                        _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    mem[0] = 0
                    mem[32] = 153
                    if stor153[0]:
                        if idx == -1:
                            revert with 0, 17
                        _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    if uint32(s) == test266151307():
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = uint32(s) + 1
                    t = 0
                    continue 
                _1750 = mem[_1710 + 32]
                _1751 = mem[_1710 + 64]
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_1710')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_1710')), 32))), 0) - 256 >= 27:
                    if 0 <= address(t):
                        revert with 0, 'Bridge: signatures sequence wrong'
                    mem[0] = 0
                    mem[32] = sha3(_1097 << 224, 152)
                    if not stor152[_1097 << 224][0]:
                        if idx == -1:
                            revert with 0, 17
                        _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    mem[0] = 0
                    mem[32] = 153
                    if stor153[0]:
                        if idx == -1:
                            revert with 0, 17
                        _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    if uint32(s) == test266151307():
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = uint32(s) + 1
                    t = 0
                    continue 
                mem[_1720 + 92] = 0
                mem[64] = _1720 + 124
                mem[_1720 + 124] = _1723
                mem[_1720 + 156] = 27
                mem[_1720 + 188] = _1750
                mem[_1720 + 220] = _1751
                signer = erecover(_1723, 27, _1750, _1751) 
                mem[_1720 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(t):
                    revert with 0, 'Bridge: signatures sequence wrong'
                mem[0] = address(signer)
                mem[32] = sha3(_1097 << 224, 152)
                if not stor152[_1097 << 224][address(signer)]:
                    if idx == -1:
                        revert with 0, 17
                    _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = s
                    t = signer
                    continue 
                mem[0] = address(signer)
                mem[32] = 153
                if stor153[address(signer)]:
                    if idx == -1:
                        revert with 0, 17
                    _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = s
                    t = signer
                    continue 
                if uint32(s) == test266151307():
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _1701 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                idx = idx + 1
                s = uint32(s) + 1
                t = signer
                continue 
            if uint32(s) < sub_79a6d51f[_1097 << 224].field_96:
                revert with 0, 'Bridge: signatures verification failed'
            mem[0] = uint32(_1097)
            mem[32] = 154
            if block.timestamp > sub_79a6d51f[_1097 << 224].field_32:
                revert with 0, 'Bridge: signatures verification failed'
            if paused:
                revert with 0, 'Bridge: signatures verification failed'
            require ('cd', 4).length >= 32
            require ('cd', 4)[0] <= test266151307()
            require ('cd', 4).length - ('cd', 4)[0] >= 288
            _1805 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            require cd[(cd[4] + ('cd', 4)[0] + 36)] == uint64(cd[(cd[4] + ('cd', 4)[0] + 36)])
            mem[_1805] = cd[(cd[4] + ('cd', 4)[0] + 36)]
            require cd[(cd[4] + ('cd', 4)[0] + 68)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 68)])
            mem[_1805 + 32] = cd[(cd[4] + ('cd', 4)[0] + 68)]
            require cd[(cd[4] + ('cd', 4)[0] + 100)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 67 < cd[4] + ('cd', 4).length + 36
            if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] > test266151307():
                revert with 0, 65
            _1865 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1
            mem[_1865] = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]
            require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 68 <= ('cd', 4).length + 36
            mem[_1865 + 32 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]] = call.data[cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 68 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]]
            mem[_1865 + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 32] = 0
            mem[_1805 + 64] = _1865
            require cd[(cd[4] + ('cd', 4)[0] + 132)] == ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
            mem[_1805 + 96] = cd[(cd[4] + ('cd', 4)[0] + 132)]
            mem[_1805 + 128] = cd[(cd[4] + ('cd', 4)[0] + 164)]
            require cd[(cd[4] + ('cd', 4)[0] + 196)] == ('signextend', 0, ('cd', ('add', 196, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
            mem[_1805 + 160] = cd[(cd[4] + ('cd', 4)[0] + 196)]
            mem[_1805 + 192] = cd[(cd[4] + ('cd', 4)[0] + 228)]
            require cd[(cd[4] + ('cd', 4)[0] + 260)] == address(cd[(cd[4] + ('cd', 4)[0] + 260)])
            mem[_1805 + 224] = cd[(cd[4] + ('cd', 4)[0] + 260)]
            require cd[(cd[4] + ('cd', 4)[0] + 292)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 292)])
            mem[_1805 + 256] = cd[(cd[4] + ('cd', 4)[0] + 292)]
            if ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4)))))) != ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor157', 157))))):
                revert with 0, 'Bridge: wrong event configuration'
            if cd[(cd[4] + ('cd', 4)[0] + 164)] != stor158:
                revert with 0, 'Bridge: wrong event configuration'
            _1882 = mem[64]
            mem[64] = mem[64] + ceil32(('cd', 4).length) + 32
            mem[_1882] = ('cd', 4).length
            mem[_1882 + 32 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[_1882 + ('cd', 4).length + 32] = 0
            require ('cd', 4).length >= 32
            _1901 = mem[_1882 + 32]
            require mem[_1882 + 32] <= test266151307()
            require ('cd', 4).length - mem[_1882 + 32] >= 288
            _1905 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            require mem[_1882 + _1901 + 32] == mem[_1882 + _1901 + 56 len 8]
            mem[_1905] = mem[_1882 + _1901 + 32]
            require mem[_1882 + _1901 + 64] == mem[_1882 + _1901 + 92 len 4]
            mem[_1905 + 32] = mem[_1882 + _1901 + 64]
            _1917 = mem[_1882 + _1901 + 96]
            require mem[_1882 + _1901 + 96] <= test266151307()
            require _1882 + _1901 + mem[_1882 + _1901 + 96] + 63 < _1882 + ('cd', 4).length + 32
            _1921 = mem[_1882 + _1901 + mem[_1882 + _1901 + 96] + 32]
            if mem[_1882 + _1901 + mem[_1882 + _1901 + 96] + 32] > test266151307():
                revert with 0, 65
            _1925 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1882 + _1901 + mem[_1882 + _1901 + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1882 + _1901 + mem[_1882 + _1901 + 96] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1882 + _1901 + mem[_1882 + _1901 + 96] + 32])) + 1
            mem[_1925] = _1921
            require _1901 + _1917 + _1921 + 64 <= ('cd', 4).length + 32
            mem[_1925 + 32 len ceil32(_1921)] = mem[_1882 + _1901 + _1917 + 64 len ceil32(_1921)]
            if ceil32(_1921) <= _1921:
                mem[_1905 + 64] = _1925
                require mem[_1882 + _1901 + 128] == ('signextend', 0, ('mem', ('range', ('add', 128, ('var', '_1882'), ('var', '_1901')), 32)))
                mem[_1905 + 96] = mem[_1882 + _1901 + 128]
                mem[_1905 + 128] = mem[_1882 + _1901 + 160]
                require mem[_1882 + _1901 + 192] == ('signextend', 0, ('mem', ('range', ('add', 192, ('var', '_1882'), ('var', '_1901')), 32)))
                mem[_1905 + 160] = mem[_1882 + _1901 + 192]
                mem[_1905 + 192] = mem[_1882 + _1901 + 224]
                require mem[_1882 + _1901 + 256] == mem[_1882 + _1901 + 268 len 20]
                mem[_1905 + 224] = mem[_1882 + _1901 + 256]
                require mem[_1882 + _1901 + 288] == mem[_1882 + _1901 + 316 len 4]
                mem[_1905 + 256] = mem[_1882 + _1901 + 288]
                require _1921 >= 96
                _2377 = mem[_1925 + 32]
                require mem[_1925 + 32] == mem[_1925 + 60 len 4]
                _2385 = mem[_1925 + 64]
                require mem[_1925 + 64] <= test266151307()
                require _1925 + _1921 + 32 > _1925 + mem[_1925 + 64] + 63
                _2393 = mem[_1925 + mem[_1925 + 64] + 32]
                if mem[_1925 + mem[_1925 + 64] + 32] > test266151307():
                    revert with 0, 65
                _2401 = mem[64]
                if mem[64] + floor32(mem[_1925 + mem[_1925 + 64] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_1925 + mem[_1925 + 64] + 32]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + floor32(mem[_1925 + mem[_1925 + 64] + 32]) + 1
                mem[_2401] = _2393
                require _1921 + 32 >= _2385 + (32 * _2393) + 64
                s = _1925 + _2385 + 64
                t = _2401 + 32
                idx = 0
                while idx < _2393:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _2697 = mem[_1925 + 96]
                require mem[_1925 + 96] == mem[_1925 + 124 len 4]
                if 1 > -lastRound + test266151307():
                    revert with 0, 17
                if uint32(_2377) != uint32(lastRound + 1):
                    revert with 0, 'Bridge: wrong round'
                if _2393 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > -uint32(2 * _2393 / 3) + test266151307():
                    revert with 0, 17
                _2729 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2729] = uint32(_2697)
                if uint32(_2697) > -sub_e17ddc41 + test266151307():
                    revert with 0, 17
                mem[_2729 + 32] = uint32(sub_e17ddc41 + uint32(_2697))
                mem[_2729 + 64] = uint32(_2393)
                if uint32(uint32(2 * _2393 / 3) + 1) < sub_e35d1653:
                    mem[_2729 + 96] = sub_e35d1653
                    mem[0] = uint32(_2377)
                    mem[32] = 154
                    sub_79a6d51f[_2377 << 224].field_0 = uint32(_2697)
                    sub_79a6d51f[_2377 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2697))
                    sub_79a6d51f[_2377 << 224].field_64 = uint32(_2393)
                    sub_79a6d51f[_2377 << 224].field_96 = sub_e35d1653
                    mem[mem[64]] = uint32(_2697)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2697))
                    mem[mem[64] + 64] = uint32(_2393)
                    mem[mem[64] + 96] = sub_e35d1653
                    emit 0x640133a6: _2697 << 224, sub_e17ddc41 + uint32(_2697) << 224, _2393 << 224, sub_e35d1653, uint32(_2377)
                    idx = 0
                    while idx < _2393:
                        if idx >= mem[_2401]:
                            revert with 0, 50
                        _3001 = mem[(32 * idx) + _2401 + 32]
                        mem[0] = mem[(32 * idx) + _2401 + 44 len 20]
                        mem[32] = sha3(_2377 << 224, 152)
                        stor152[_2377 << 224][address(_3001)] = 1
                        emit RoundRelay(uint32(_2377), address(_3001));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_2729 + 96] = uint32(uint32(2 * _2393 / 3) + 1)
                    mem[0] = uint32(_2377)
                    mem[32] = 154
                    sub_79a6d51f[_2377 << 224].field_0 = uint32(_2697)
                    sub_79a6d51f[_2377 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2697))
                    sub_79a6d51f[_2377 << 224].field_64 = uint32(_2393)
                    sub_79a6d51f[_2377 << 224].field_96 = uint32(uint32(2 * _2393 / 3) + 1)
                    mem[mem[64]] = uint32(_2697)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2697))
                    mem[mem[64] + 64] = uint32(_2393)
                    mem[mem[64] + 96] = uint32(uint32(2 * _2393 / 3) + 1)
                    emit 0x640133a6: _2697 << 224, sub_e17ddc41 + uint32(_2697) << 224, _2393 << 224, uint32(uint32(2 * _2393 / 3) + 1), uint32(_2377)
                    idx = 0
                    while idx < _2393:
                        if idx >= mem[_2401]:
                            revert with 0, 50
                        _3005 = mem[(32 * idx) + _2401 + 32]
                        mem[0] = mem[(32 * idx) + _2401 + 44 len 20]
                        mem[32] = sha3(_2377 << 224, 152)
                        stor152[_2377 << 224][address(_3005)] = 1
                        emit RoundRelay(uint32(_2377), address(_3005));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[_1925 + _1921 + 32] = 0
                mem[_1905 + 64] = _1925
                require mem[_1882 + _1901 + 128] == ('signextend', 0, ('mem', ('range', ('add', 128, ('var', '_1882'), ('var', '_1901')), 32)))
                mem[_1905 + 96] = mem[_1882 + _1901 + 128]
                mem[_1905 + 128] = mem[_1882 + _1901 + 160]
                require mem[_1882 + _1901 + 192] == ('signextend', 0, ('mem', ('range', ('add', 192, ('var', '_1882'), ('var', '_1901')), 32)))
                mem[_1905 + 160] = mem[_1882 + _1901 + 192]
                mem[_1905 + 192] = mem[_1882 + _1901 + 224]
                require mem[_1882 + _1901 + 256] == mem[_1882 + _1901 + 268 len 20]
                mem[_1905 + 224] = mem[_1882 + _1901 + 256]
                require mem[_1882 + _1901 + 288] == mem[_1882 + _1901 + 316 len 4]
                mem[_1905 + 256] = mem[_1882 + _1901 + 288]
                require _1921 >= 96
                _2381 = mem[_1925 + 32]
                require mem[_1925 + 32] == mem[_1925 + 60 len 4]
                _2389 = mem[_1925 + 64]
                require mem[_1925 + 64] <= test266151307()
                require _1925 + _1921 + 32 > _1925 + mem[_1925 + 64] + 63
                _2397 = mem[_1925 + mem[_1925 + 64] + 32]
                if mem[_1925 + mem[_1925 + 64] + 32] > test266151307():
                    revert with 0, 65
                _2405 = mem[64]
                if mem[64] + floor32(mem[_1925 + mem[_1925 + 64] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_1925 + mem[_1925 + 64] + 32]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + floor32(mem[_1925 + mem[_1925 + 64] + 32]) + 1
                mem[_2405] = _2397
                require _1921 + 32 >= _2389 + (32 * _2397) + 64
                s = _1925 + _2389 + 64
                t = _2405 + 32
                idx = 0
                while idx < _2397:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _2698 = mem[_1925 + 96]
                require mem[_1925 + 96] == mem[_1925 + 124 len 4]
                if 1 > -lastRound + test266151307():
                    revert with 0, 17
                if uint32(_2381) != uint32(lastRound + 1):
                    revert with 0, 'Bridge: wrong round'
                if _2397 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > -uint32(2 * _2397 / 3) + test266151307():
                    revert with 0, 17
                _2730 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2730] = uint32(_2698)
                if uint32(_2698) > -sub_e17ddc41 + test266151307():
                    revert with 0, 17
                mem[_2730 + 32] = uint32(sub_e17ddc41 + uint32(_2698))
                mem[_2730 + 64] = uint32(_2397)
                if uint32(uint32(2 * _2397 / 3) + 1) < sub_e35d1653:
                    mem[_2730 + 96] = sub_e35d1653
                    mem[0] = uint32(_2381)
                    mem[32] = 154
                    sub_79a6d51f[_2381 << 224].field_0 = uint32(_2698)
                    sub_79a6d51f[_2381 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2698))
                    sub_79a6d51f[_2381 << 224].field_64 = uint32(_2397)
                    sub_79a6d51f[_2381 << 224].field_96 = sub_e35d1653
                    mem[mem[64]] = uint32(_2698)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2698))
                    mem[mem[64] + 64] = uint32(_2397)
                    mem[mem[64] + 96] = sub_e35d1653
                    emit 0x640133a6: _2698 << 224, sub_e17ddc41 + uint32(_2698) << 224, _2397 << 224, sub_e35d1653, uint32(_2381)
                    idx = 0
                    while idx < _2397:
                        if idx >= mem[_2405]:
                            revert with 0, 50
                        _3009 = mem[(32 * idx) + _2405 + 32]
                        mem[0] = mem[(32 * idx) + _2405 + 44 len 20]
                        mem[32] = sha3(_2381 << 224, 152)
                        stor152[_2381 << 224][address(_3009)] = 1
                        emit RoundRelay(uint32(_2381), address(_3009));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_2730 + 96] = uint32(uint32(2 * _2397 / 3) + 1)
                    mem[0] = uint32(_2381)
                    mem[32] = 154
                    sub_79a6d51f[_2381 << 224].field_0 = uint32(_2698)
                    sub_79a6d51f[_2381 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2698))
                    sub_79a6d51f[_2381 << 224].field_64 = uint32(_2397)
                    sub_79a6d51f[_2381 << 224].field_96 = uint32(uint32(2 * _2397 / 3) + 1)
                    mem[mem[64]] = uint32(_2698)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2698))
                    mem[mem[64] + 64] = uint32(_2397)
                    mem[mem[64] + 96] = uint32(uint32(2 * _2397 / 3) + 1)
                    emit 0x640133a6: _2698 << 224, sub_e17ddc41 + uint32(_2698) << 224, _2397 << 224, uint32(uint32(2 * _2397 / 3) + 1), uint32(_2381)
                    idx = 0
                    while idx < _2397:
                        if idx >= mem[_2405]:
                            revert with 0, 50
                        _3013 = mem[(32 * idx) + _2405 + 32]
                        mem[0] = mem[(32 * idx) + _2405 + 44 len 20]
                        mem[32] = sha3(_2381 << 224, 152)
                        stor152[_2381 << 224][address(_3013)] = 1
                        emit RoundRelay(uint32(_2381), address(_3013));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            mem[_703 + _701 + 32] = 0
            mem[_693 + 64] = _703
            require mem[(2 * ceil32(('cd', 4).length)) + _689 + 352] == ('signextend', 0, ('mem', ('range', ('add', 352, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('cd', 4))))), ('var', '_689')), 32)))
            mem[_693 + 96] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 352]
            mem[_693 + 128] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 384]
            require mem[(2 * ceil32(('cd', 4).length)) + _689 + 416] == ('signextend', 0, ('mem', ('range', ('add', 416, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('cd', 4))))), ('var', '_689')), 32)))
            mem[_693 + 160] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 416]
            mem[_693 + 192] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 448]
            require mem[(2 * ceil32(('cd', 4).length)) + _689 + 480] == mem[(2 * ceil32(('cd', 4).length)) + _689 + 492 len 20]
            mem[_693 + 224] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 480]
            require mem[(2 * ceil32(('cd', 4).length)) + _689 + 512] == mem[(2 * ceil32(('cd', 4).length)) + _689 + 540 len 4]
            mem[_693 + 256] = mem[(2 * ceil32(('cd', 4).length)) + _689 + 512]
            _1099 = mem[_693 + 256]
            if mem[_693 + 284 len 4] < initialRound:
                revert with 0, 'Bridge: signatures verification failed'
            if mem[_693 + 284 len 4] > lastRound:
                revert with 0, 'Bridge: signatures verification failed'
            _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
            idx = 0
            s = 0
            t = 0
            while idx < _1702:
                if idx >= mem[(3 * ceil32(('cd', 4).length)) + 256]:
                    revert with 0, 50
                _1712 = mem[(32 * idx) + (3 * ceil32(('cd', 4).length)) + 288]
                _1726 = sha3(mem[(2 * ceil32(('cd', 4).length)) + 256 len mem[(2 * ceil32(('cd', 4).length)) + 224]])
                _1727 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = _1726
                _1728 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _1730 = sha3(mem[_1728 + 32 len mem[_1728]])
                if mem[_1712] != 65:
                    if 0 <= address(t):
                        revert with 0, 'Bridge: signatures sequence wrong'
                    mem[0] = 0
                    mem[32] = sha3(_1099 << 224, 152)
                    if not stor152[_1099 << 224][0]:
                        if idx == -1:
                            revert with 0, 17
                        _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    mem[0] = 0
                    mem[32] = 153
                    if stor153[0]:
                        if idx == -1:
                            revert with 0, 17
                        _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    if uint32(s) == test266151307():
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = uint32(s) + 1
                    t = 0
                    continue 
                _1754 = mem[_1712 + 32]
                _1755 = mem[_1712 + 64]
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_1712')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_1712')), 32))), 0) - 256 >= 27:
                    if 0 <= address(t):
                        revert with 0, 'Bridge: signatures sequence wrong'
                    mem[0] = 0
                    mem[32] = sha3(_1099 << 224, 152)
                    if not stor152[_1099 << 224][0]:
                        if idx == -1:
                            revert with 0, 17
                        _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    mem[0] = 0
                    mem[32] = 153
                    if stor153[0]:
                        if idx == -1:
                            revert with 0, 17
                        _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    if uint32(s) == test266151307():
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = uint32(s) + 1
                    t = 0
                    continue 
                mem[_1727 + 92] = 0
                mem[64] = _1727 + 124
                mem[_1727 + 124] = _1730
                mem[_1727 + 156] = 27
                mem[_1727 + 188] = _1754
                mem[_1727 + 220] = _1755
                signer = erecover(_1730, 27, _1754, _1755) 
                mem[_1727 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(t):
                    revert with 0, 'Bridge: signatures sequence wrong'
                mem[0] = address(signer)
                mem[32] = sha3(_1099 << 224, 152)
                if not stor152[_1099 << 224][address(signer)]:
                    if idx == -1:
                        revert with 0, 17
                    _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = s
                    t = signer
                    continue 
                mem[0] = address(signer)
                mem[32] = 153
                if stor153[address(signer)]:
                    if idx == -1:
                        revert with 0, 17
                    _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = s
                    t = signer
                    continue 
                if uint32(s) == test266151307():
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _1702 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                idx = idx + 1
                s = uint32(s) + 1
                t = signer
                continue 
            if uint32(s) < sub_79a6d51f[_1099 << 224].field_96:
                revert with 0, 'Bridge: signatures verification failed'
            mem[0] = uint32(_1099)
            mem[32] = 154
            if block.timestamp > sub_79a6d51f[_1099 << 224].field_32:
                revert with 0, 'Bridge: signatures verification failed'
            if paused:
                revert with 0, 'Bridge: signatures verification failed'
            require ('cd', 4).length >= 32
            require ('cd', 4)[0] <= test266151307()
            require ('cd', 4).length - ('cd', 4)[0] >= 288
            _1808 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            require cd[(cd[4] + ('cd', 4)[0] + 36)] == uint64(cd[(cd[4] + ('cd', 4)[0] + 36)])
            mem[_1808] = cd[(cd[4] + ('cd', 4)[0] + 36)]
            require cd[(cd[4] + ('cd', 4)[0] + 68)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 68)])
            mem[_1808 + 32] = cd[(cd[4] + ('cd', 4)[0] + 68)]
            require cd[(cd[4] + ('cd', 4)[0] + 100)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 67 < cd[4] + ('cd', 4).length + 36
            if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] > test266151307():
                revert with 0, 65
            _1866 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1
            mem[_1866] = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]
            require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 68 <= ('cd', 4).length + 36
            mem[_1866 + 32 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]] = call.data[cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 68 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]]
            mem[_1866 + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 32] = 0
            mem[_1808 + 64] = _1866
            require cd[(cd[4] + ('cd', 4)[0] + 132)] == ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
            mem[_1808 + 96] = cd[(cd[4] + ('cd', 4)[0] + 132)]
            mem[_1808 + 128] = cd[(cd[4] + ('cd', 4)[0] + 164)]
            require cd[(cd[4] + ('cd', 4)[0] + 196)] == ('signextend', 0, ('cd', ('add', 196, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
            mem[_1808 + 160] = cd[(cd[4] + ('cd', 4)[0] + 196)]
            mem[_1808 + 192] = cd[(cd[4] + ('cd', 4)[0] + 228)]
            require cd[(cd[4] + ('cd', 4)[0] + 260)] == address(cd[(cd[4] + ('cd', 4)[0] + 260)])
            mem[_1808 + 224] = cd[(cd[4] + ('cd', 4)[0] + 260)]
            require cd[(cd[4] + ('cd', 4)[0] + 292)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 292)])
            mem[_1808 + 256] = cd[(cd[4] + ('cd', 4)[0] + 292)]
            if ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4)))))) != ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor157', 157))))):
                revert with 0, 'Bridge: wrong event configuration'
            if cd[(cd[4] + ('cd', 4)[0] + 164)] != stor158:
                revert with 0, 'Bridge: wrong event configuration'
            _1885 = mem[64]
            mem[64] = mem[64] + ceil32(('cd', 4).length) + 32
            mem[_1885] = ('cd', 4).length
            mem[_1885 + 32 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[_1885 + ('cd', 4).length + 32] = 0
            require ('cd', 4).length >= 32
            _1902 = mem[_1885 + 32]
            require mem[_1885 + 32] <= test266151307()
            require ('cd', 4).length - mem[_1885 + 32] >= 288
            _1906 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            require mem[_1885 + _1902 + 32] == mem[_1885 + _1902 + 56 len 8]
            mem[_1906] = mem[_1885 + _1902 + 32]
            require mem[_1885 + _1902 + 64] == mem[_1885 + _1902 + 92 len 4]
            mem[_1906 + 32] = mem[_1885 + _1902 + 64]
            _1918 = mem[_1885 + _1902 + 96]
            require mem[_1885 + _1902 + 96] <= test266151307()
            require _1885 + _1902 + mem[_1885 + _1902 + 96] + 63 < _1885 + ('cd', 4).length + 32
            _1922 = mem[_1885 + _1902 + mem[_1885 + _1902 + 96] + 32]
            if mem[_1885 + _1902 + mem[_1885 + _1902 + 96] + 32] > test266151307():
                revert with 0, 65
            _1926 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1885 + _1902 + mem[_1885 + _1902 + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1885 + _1902 + mem[_1885 + _1902 + 96] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1885 + _1902 + mem[_1885 + _1902 + 96] + 32])) + 1
            mem[_1926] = _1922
            require _1902 + _1918 + _1922 + 64 <= ('cd', 4).length + 32
            mem[_1926 + 32 len ceil32(_1922)] = mem[_1885 + _1902 + _1918 + 64 len ceil32(_1922)]
            if ceil32(_1922) <= _1922:
                mem[_1906 + 64] = _1926
                require mem[_1885 + _1902 + 128] == ('signextend', 0, ('mem', ('range', ('add', 128, ('var', '_1885'), ('var', '_1902')), 32)))
                mem[_1906 + 96] = mem[_1885 + _1902 + 128]
                mem[_1906 + 128] = mem[_1885 + _1902 + 160]
                require mem[_1885 + _1902 + 192] == ('signextend', 0, ('mem', ('range', ('add', 192, ('var', '_1885'), ('var', '_1902')), 32)))
                mem[_1906 + 160] = mem[_1885 + _1902 + 192]
                mem[_1906 + 192] = mem[_1885 + _1902 + 224]
                require mem[_1885 + _1902 + 256] == mem[_1885 + _1902 + 268 len 20]
                mem[_1906 + 224] = mem[_1885 + _1902 + 256]
                require mem[_1885 + _1902 + 288] == mem[_1885 + _1902 + 316 len 4]
                mem[_1906 + 256] = mem[_1885 + _1902 + 288]
                require _1922 >= 96
                _2378 = mem[_1926 + 32]
                require mem[_1926 + 32] == mem[_1926 + 60 len 4]
                _2386 = mem[_1926 + 64]
                require mem[_1926 + 64] <= test266151307()
                require _1926 + _1922 + 32 > _1926 + mem[_1926 + 64] + 63
                _2394 = mem[_1926 + mem[_1926 + 64] + 32]
                if mem[_1926 + mem[_1926 + 64] + 32] > test266151307():
                    revert with 0, 65
                _2402 = mem[64]
                if mem[64] + floor32(mem[_1926 + mem[_1926 + 64] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_1926 + mem[_1926 + 64] + 32]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + floor32(mem[_1926 + mem[_1926 + 64] + 32]) + 1
                mem[_2402] = _2394
                require _1922 + 32 >= _2386 + (32 * _2394) + 64
                s = _1926 + _2386 + 64
                t = _2402 + 32
                idx = 0
                while idx < _2394:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _2699 = mem[_1926 + 96]
                require mem[_1926 + 96] == mem[_1926 + 124 len 4]
                if 1 > -lastRound + test266151307():
                    revert with 0, 17
                if uint32(_2378) != uint32(lastRound + 1):
                    revert with 0, 'Bridge: wrong round'
                if _2394 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > -uint32(2 * _2394 / 3) + test266151307():
                    revert with 0, 17
                _2731 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2731] = uint32(_2699)
                if uint32(_2699) > -sub_e17ddc41 + test266151307():
                    revert with 0, 17
                mem[_2731 + 32] = uint32(sub_e17ddc41 + uint32(_2699))
                mem[_2731 + 64] = uint32(_2394)
                if uint32(uint32(2 * _2394 / 3) + 1) < sub_e35d1653:
                    mem[_2731 + 96] = sub_e35d1653
                    mem[0] = uint32(_2378)
                    mem[32] = 154
                    sub_79a6d51f[_2378 << 224].field_0 = uint32(_2699)
                    sub_79a6d51f[_2378 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2699))
                    sub_79a6d51f[_2378 << 224].field_64 = uint32(_2394)
                    sub_79a6d51f[_2378 << 224].field_96 = sub_e35d1653
                    mem[mem[64]] = uint32(_2699)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2699))
                    mem[mem[64] + 64] = uint32(_2394)
                    mem[mem[64] + 96] = sub_e35d1653
                    emit 0x640133a6: _2699 << 224, sub_e17ddc41 + uint32(_2699) << 224, _2394 << 224, sub_e35d1653, uint32(_2378)
                    idx = 0
                    while idx < _2394:
                        if idx >= mem[_2402]:
                            revert with 0, 50
                        _3017 = mem[(32 * idx) + _2402 + 32]
                        mem[0] = mem[(32 * idx) + _2402 + 44 len 20]
                        mem[32] = sha3(_2378 << 224, 152)
                        stor152[_2378 << 224][address(_3017)] = 1
                        emit RoundRelay(uint32(_2378), address(_3017));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_2731 + 96] = uint32(uint32(2 * _2394 / 3) + 1)
                    mem[0] = uint32(_2378)
                    mem[32] = 154
                    sub_79a6d51f[_2378 << 224].field_0 = uint32(_2699)
                    sub_79a6d51f[_2378 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2699))
                    sub_79a6d51f[_2378 << 224].field_64 = uint32(_2394)
                    sub_79a6d51f[_2378 << 224].field_96 = uint32(uint32(2 * _2394 / 3) + 1)
                    mem[mem[64]] = uint32(_2699)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2699))
                    mem[mem[64] + 64] = uint32(_2394)
                    mem[mem[64] + 96] = uint32(uint32(2 * _2394 / 3) + 1)
                    emit 0x640133a6: _2699 << 224, sub_e17ddc41 + uint32(_2699) << 224, _2394 << 224, uint32(uint32(2 * _2394 / 3) + 1), uint32(_2378)
                    idx = 0
                    while idx < _2394:
                        if idx >= mem[_2402]:
                            revert with 0, 50
                        _3021 = mem[(32 * idx) + _2402 + 32]
                        mem[0] = mem[(32 * idx) + _2402 + 44 len 20]
                        mem[32] = sha3(_2378 << 224, 152)
                        stor152[_2378 << 224][address(_3021)] = 1
                        emit RoundRelay(uint32(_2378), address(_3021));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[_1926 + _1922 + 32] = 0
                mem[_1906 + 64] = _1926
                require mem[_1885 + _1902 + 128] == ('signextend', 0, ('mem', ('range', ('add', 128, ('var', '_1885'), ('var', '_1902')), 32)))
                mem[_1906 + 96] = mem[_1885 + _1902 + 128]
                mem[_1906 + 128] = mem[_1885 + _1902 + 160]
                require mem[_1885 + _1902 + 192] == ('signextend', 0, ('mem', ('range', ('add', 192, ('var', '_1885'), ('var', '_1902')), 32)))
                mem[_1906 + 160] = mem[_1885 + _1902 + 192]
                mem[_1906 + 192] = mem[_1885 + _1902 + 224]
                require mem[_1885 + _1902 + 256] == mem[_1885 + _1902 + 268 len 20]
                mem[_1906 + 224] = mem[_1885 + _1902 + 256]
                require mem[_1885 + _1902 + 288] == mem[_1885 + _1902 + 316 len 4]
                mem[_1906 + 256] = mem[_1885 + _1902 + 288]
                require _1922 >= 96
                _2382 = mem[_1926 + 32]
                require mem[_1926 + 32] == mem[_1926 + 60 len 4]
                _2390 = mem[_1926 + 64]
                require mem[_1926 + 64] <= test266151307()
                require _1926 + _1922 + 32 > _1926 + mem[_1926 + 64] + 63
                _2398 = mem[_1926 + mem[_1926 + 64] + 32]
                if mem[_1926 + mem[_1926 + 64] + 32] > test266151307():
                    revert with 0, 65
                _2406 = mem[64]
                if mem[64] + floor32(mem[_1926 + mem[_1926 + 64] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_1926 + mem[_1926 + 64] + 32]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + floor32(mem[_1926 + mem[_1926 + 64] + 32]) + 1
                mem[_2406] = _2398
                require _1922 + 32 >= _2390 + (32 * _2398) + 64
                s = _1926 + _2390 + 64
                t = _2406 + 32
                idx = 0
                while idx < _2398:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _2700 = mem[_1926 + 96]
                require mem[_1926 + 96] == mem[_1926 + 124 len 4]
                if 1 > -lastRound + test266151307():
                    revert with 0, 17
                if uint32(_2382) != uint32(lastRound + 1):
                    revert with 0, 'Bridge: wrong round'
                if _2398 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > -uint32(2 * _2398 / 3) + test266151307():
                    revert with 0, 17
                _2732 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2732] = uint32(_2700)
                if uint32(_2700) > -sub_e17ddc41 + test266151307():
                    revert with 0, 17
                mem[_2732 + 32] = uint32(sub_e17ddc41 + uint32(_2700))
                mem[_2732 + 64] = uint32(_2398)
                if uint32(uint32(2 * _2398 / 3) + 1) < sub_e35d1653:
                    mem[_2732 + 96] = sub_e35d1653
                    mem[0] = uint32(_2382)
                    mem[32] = 154
                    sub_79a6d51f[_2382 << 224].field_0 = uint32(_2700)
                    sub_79a6d51f[_2382 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2700))
                    sub_79a6d51f[_2382 << 224].field_64 = uint32(_2398)
                    sub_79a6d51f[_2382 << 224].field_96 = sub_e35d1653
                    mem[mem[64]] = uint32(_2700)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2700))
                    mem[mem[64] + 64] = uint32(_2398)
                    mem[mem[64] + 96] = sub_e35d1653
                    emit 0x640133a6: _2700 << 224, sub_e17ddc41 + uint32(_2700) << 224, _2398 << 224, sub_e35d1653, uint32(_2382)
                    idx = 0
                    while idx < _2398:
                        if idx >= mem[_2406]:
                            revert with 0, 50
                        _3025 = mem[(32 * idx) + _2406 + 32]
                        mem[0] = mem[(32 * idx) + _2406 + 44 len 20]
                        mem[32] = sha3(_2382 << 224, 152)
                        stor152[_2382 << 224][address(_3025)] = 1
                        emit RoundRelay(uint32(_2382), address(_3025));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_2732 + 96] = uint32(uint32(2 * _2398 / 3) + 1)
                    mem[0] = uint32(_2382)
                    mem[32] = 154
                    sub_79a6d51f[_2382 << 224].field_0 = uint32(_2700)
                    sub_79a6d51f[_2382 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2700))
                    sub_79a6d51f[_2382 << 224].field_64 = uint32(_2398)
                    sub_79a6d51f[_2382 << 224].field_96 = uint32(uint32(2 * _2398 / 3) + 1)
                    mem[mem[64]] = uint32(_2700)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2700))
                    mem[mem[64] + 64] = uint32(_2398)
                    mem[mem[64] + 96] = uint32(uint32(2 * _2398 / 3) + 1)
                    emit 0x640133a6: _2700 << 224, sub_e17ddc41 + uint32(_2700) << 224, _2398 << 224, uint32(uint32(2 * _2398 / 3) + 1), uint32(_2382)
                    idx = 0
                    while idx < _2398:
                        if idx >= mem[_2406]:
                            revert with 0, 50
                        _3029 = mem[(32 * idx) + _2406 + 32]
                        mem[0] = mem[(32 * idx) + _2406 + 44 len 20]
                        mem[32] = sha3(_2382 << 224, 152)
                        stor152[_2382 << 224][address(_3029)] = 1
                        emit RoundRelay(uint32(_2382), address(_3029));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        if lastRound == test266151307():
            revert with 0, 17
        lastRound = uint32(lastRound + 1)
        stor151[_321] = 1
    else:
        mem[ceil32(('cd', 4).length) + ('cd', 4).length + 224] = 0
        mem[ceil32(('cd', 4).length) + 128] = ceil32(('cd', 4).length) + 64
        _327 = sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])
        mem[0] = sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])
        mem[32] = 151
        if stor151[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]]:
            mem[(2 * ceil32(('cd', 4).length)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(('cd', 4).length)) + 228] = 32
            mem[(2 * ceil32(('cd', 4).length)) + 260] = 27
            mem[(2 * ceil32(('cd', 4).length)) + 292] = 'Cache: payload already seen'
            revert with memory
              from (2 * ceil32(('cd', 4).length)) + 224
               len ceil32(('cd', 4).length) + 100
        mem[(2 * ceil32(('cd', 4).length)) + 224] = ('cd', 4).length
        mem[(2 * ceil32(('cd', 4).length)) + 256 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[(2 * ceil32(('cd', 4).length)) + ('cd', 4).length + 256] = 0
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        if floor32(('cd', 36).length) + 129 < 128 or (3 * ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 257 > test266151307():
            revert with 0, 65
        mem[64] = (3 * ceil32(('cd', 4).length)) + floor32(('cd', 36).length) + 257
        mem[(3 * ceil32(('cd', 4).length)) + 256] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (3 * ceil32(('cd', 4).length)) + 288
        while idx < ('cd', 36).length:
            require cd[36] + cd[s] + 67 < calldata.size
            if cd[(cd[36] + cd[s] + 36)] > test266151307():
                revert with 0, 65
            _692 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
            mem[_692] = cd[(cd[36] + cd[s] + 36)]
            require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
            mem[_692 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
            mem[_692 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
            mem[t] = _692
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _688 = mem[(2 * ceil32(('cd', 4).length)) + 224]
        require mem[(2 * ceil32(('cd', 4).length)) + 224] >= 32
        _690 = mem[(2 * ceil32(('cd', 4).length)) + 256]
        require mem[(2 * ceil32(('cd', 4).length)) + 256] <= test266151307()
        require mem[(2 * ceil32(('cd', 4).length)) + 224] - mem[(2 * ceil32(('cd', 4).length)) + 256] >= 288
        _694 = mem[64]
        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 288
        require mem[(2 * ceil32(('cd', 4).length)) + mem[(2 * ceil32(('cd', 4).length)) + 256] + 256] == mem[(2 * ceil32(('cd', 4).length)) + mem[(2 * ceil32(('cd', 4).length)) + 256] + 280 len 8]
        mem[_694] = mem[(2 * ceil32(('cd', 4).length)) + mem[(2 * ceil32(('cd', 4).length)) + 256] + 256]
        require mem[(2 * ceil32(('cd', 4).length)) + _690 + 288] == mem[(2 * ceil32(('cd', 4).length)) + _690 + 316 len 4]
        mem[_694 + 32] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 288]
        _700 = mem[(2 * ceil32(('cd', 4).length)) + _690 + 320]
        require mem[(2 * ceil32(('cd', 4).length)) + _690 + 320] <= test266151307()
        require (2 * ceil32(('cd', 4).length)) + _690 + mem[(2 * ceil32(('cd', 4).length)) + _690 + 320] + 287 < (2 * ceil32(('cd', 4).length)) + _688 + 256
        _702 = mem[(2 * ceil32(('cd', 4).length)) + _690 + mem[(2 * ceil32(('cd', 4).length)) + _690 + 320] + 256]
        if mem[(2 * ceil32(('cd', 4).length)) + _690 + mem[(2 * ceil32(('cd', 4).length)) + _690 + 320] + 256] > test266151307():
            revert with 0, 65
        _704 = mem[64]
        if mem[64] + ceil32(ceil32(mem[(2 * ceil32(('cd', 4).length)) + _690 + mem[(2 * ceil32(('cd', 4).length)) + _690 + 320] + 256])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(2 * ceil32(('cd', 4).length)) + _690 + mem[(2 * ceil32(('cd', 4).length)) + _690 + 320] + 256])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[(2 * ceil32(('cd', 4).length)) + _690 + mem[(2 * ceil32(('cd', 4).length)) + _690 + 320] + 256])) + 1
        mem[_704] = _702
        require _690 + _700 + _702 + 64 <= _688 + 32
        mem[_704 + 32 len ceil32(_702)] = mem[(2 * ceil32(('cd', 4).length)) + _690 + _700 + 288 len ceil32(_702)]
        if ceil32(_702) <= _702:
            mem[_694 + 64] = _704
            require mem[(2 * ceil32(('cd', 4).length)) + _690 + 352] == ('signextend', 0, ('mem', ('range', ('add', 352, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('cd', 4))))), ('var', '_690')), 32)))
            mem[_694 + 96] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 352]
            mem[_694 + 128] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 384]
            require mem[(2 * ceil32(('cd', 4).length)) + _690 + 416] == ('signextend', 0, ('mem', ('range', ('add', 416, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('cd', 4))))), ('var', '_690')), 32)))
            mem[_694 + 160] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 416]
            mem[_694 + 192] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 448]
            require mem[(2 * ceil32(('cd', 4).length)) + _690 + 480] == mem[(2 * ceil32(('cd', 4).length)) + _690 + 492 len 20]
            mem[_694 + 224] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 480]
            require mem[(2 * ceil32(('cd', 4).length)) + _690 + 512] == mem[(2 * ceil32(('cd', 4).length)) + _690 + 540 len 4]
            mem[_694 + 256] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 512]
            _1098 = mem[_694 + 256]
            if mem[_694 + 284 len 4] < initialRound:
                revert with 0, 'Bridge: signatures verification failed'
            if mem[_694 + 284 len 4] > lastRound:
                revert with 0, 'Bridge: signatures verification failed'
            _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
            idx = 0
            s = 0
            t = 0
            while idx < _1703:
                if idx >= mem[(3 * ceil32(('cd', 4).length)) + 256]:
                    revert with 0, 50
                _1714 = mem[(32 * idx) + (3 * ceil32(('cd', 4).length)) + 288]
                _1733 = sha3(mem[(2 * ceil32(('cd', 4).length)) + 256 len mem[(2 * ceil32(('cd', 4).length)) + 224]])
                _1734 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = _1733
                _1735 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _1737 = sha3(mem[_1735 + 32 len mem[_1735]])
                if mem[_1714] != 65:
                    if 0 <= address(t):
                        revert with 0, 'Bridge: signatures sequence wrong'
                    mem[0] = 0
                    mem[32] = sha3(_1098 << 224, 152)
                    if not stor152[_1098 << 224][0]:
                        if idx == -1:
                            revert with 0, 17
                        _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    mem[0] = 0
                    mem[32] = 153
                    if stor153[0]:
                        if idx == -1:
                            revert with 0, 17
                        _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    if uint32(s) == test266151307():
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = uint32(s) + 1
                    t = 0
                    continue 
                _1758 = mem[_1714 + 32]
                _1759 = mem[_1714 + 64]
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_1714')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_1714')), 32))), 0) - 256 >= 27:
                    if 0 <= address(t):
                        revert with 0, 'Bridge: signatures sequence wrong'
                    mem[0] = 0
                    mem[32] = sha3(_1098 << 224, 152)
                    if not stor152[_1098 << 224][0]:
                        if idx == -1:
                            revert with 0, 17
                        _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    mem[0] = 0
                    mem[32] = 153
                    if stor153[0]:
                        if idx == -1:
                            revert with 0, 17
                        _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    if uint32(s) == test266151307():
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = uint32(s) + 1
                    t = 0
                    continue 
                mem[_1734 + 92] = 0
                mem[64] = _1734 + 124
                mem[_1734 + 124] = _1737
                mem[_1734 + 156] = 27
                mem[_1734 + 188] = _1758
                mem[_1734 + 220] = _1759
                signer = erecover(_1737, 27, _1758, _1759) 
                mem[_1734 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(t):
                    revert with 0, 'Bridge: signatures sequence wrong'
                mem[0] = address(signer)
                mem[32] = sha3(_1098 << 224, 152)
                if not stor152[_1098 << 224][address(signer)]:
                    if idx == -1:
                        revert with 0, 17
                    _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = s
                    t = signer
                    continue 
                mem[0] = address(signer)
                mem[32] = 153
                if stor153[address(signer)]:
                    if idx == -1:
                        revert with 0, 17
                    _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = s
                    t = signer
                    continue 
                if uint32(s) == test266151307():
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _1703 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                idx = idx + 1
                s = uint32(s) + 1
                t = signer
                continue 
            if uint32(s) < sub_79a6d51f[_1098 << 224].field_96:
                revert with 0, 'Bridge: signatures verification failed'
            mem[0] = uint32(_1098)
            mem[32] = 154
            if block.timestamp > sub_79a6d51f[_1098 << 224].field_32:
                revert with 0, 'Bridge: signatures verification failed'
            if paused:
                revert with 0, 'Bridge: signatures verification failed'
            require ('cd', 4).length >= 32
            require ('cd', 4)[0] <= test266151307()
            require ('cd', 4).length - ('cd', 4)[0] >= 288
            _1811 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            require cd[(cd[4] + ('cd', 4)[0] + 36)] == uint64(cd[(cd[4] + ('cd', 4)[0] + 36)])
            mem[_1811] = cd[(cd[4] + ('cd', 4)[0] + 36)]
            require cd[(cd[4] + ('cd', 4)[0] + 68)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 68)])
            mem[_1811 + 32] = cd[(cd[4] + ('cd', 4)[0] + 68)]
            require cd[(cd[4] + ('cd', 4)[0] + 100)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 67 < cd[4] + ('cd', 4).length + 36
            if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] > test266151307():
                revert with 0, 65
            _1867 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1
            mem[_1867] = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]
            require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 68 <= ('cd', 4).length + 36
            mem[_1867 + 32 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]] = call.data[cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 68 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]]
            mem[_1867 + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 32] = 0
            mem[_1811 + 64] = _1867
            require cd[(cd[4] + ('cd', 4)[0] + 132)] == ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
            mem[_1811 + 96] = cd[(cd[4] + ('cd', 4)[0] + 132)]
            mem[_1811 + 128] = cd[(cd[4] + ('cd', 4)[0] + 164)]
            require cd[(cd[4] + ('cd', 4)[0] + 196)] == ('signextend', 0, ('cd', ('add', 196, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
            mem[_1811 + 160] = cd[(cd[4] + ('cd', 4)[0] + 196)]
            mem[_1811 + 192] = cd[(cd[4] + ('cd', 4)[0] + 228)]
            require cd[(cd[4] + ('cd', 4)[0] + 260)] == address(cd[(cd[4] + ('cd', 4)[0] + 260)])
            mem[_1811 + 224] = cd[(cd[4] + ('cd', 4)[0] + 260)]
            require cd[(cd[4] + ('cd', 4)[0] + 292)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 292)])
            mem[_1811 + 256] = cd[(cd[4] + ('cd', 4)[0] + 292)]
            if ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4)))))) != ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor157', 157))))):
                revert with 0, 'Bridge: wrong event configuration'
            if cd[(cd[4] + ('cd', 4)[0] + 164)] != stor158:
                revert with 0, 'Bridge: wrong event configuration'
            _1888 = mem[64]
            mem[64] = mem[64] + ceil32(('cd', 4).length) + 32
            mem[_1888] = ('cd', 4).length
            mem[_1888 + 32 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[_1888 + ('cd', 4).length + 32] = 0
            require ('cd', 4).length >= 32
            _1903 = mem[_1888 + 32]
            require mem[_1888 + 32] <= test266151307()
            require ('cd', 4).length - mem[_1888 + 32] >= 288
            _1907 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            require mem[_1888 + _1903 + 32] == mem[_1888 + _1903 + 56 len 8]
            mem[_1907] = mem[_1888 + _1903 + 32]
            require mem[_1888 + _1903 + 64] == mem[_1888 + _1903 + 92 len 4]
            mem[_1907 + 32] = mem[_1888 + _1903 + 64]
            _1919 = mem[_1888 + _1903 + 96]
            require mem[_1888 + _1903 + 96] <= test266151307()
            require _1888 + _1903 + mem[_1888 + _1903 + 96] + 63 < _1888 + ('cd', 4).length + 32
            _1923 = mem[_1888 + _1903 + mem[_1888 + _1903 + 96] + 32]
            if mem[_1888 + _1903 + mem[_1888 + _1903 + 96] + 32] > test266151307():
                revert with 0, 65
            _1927 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1888 + _1903 + mem[_1888 + _1903 + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1888 + _1903 + mem[_1888 + _1903 + 96] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1888 + _1903 + mem[_1888 + _1903 + 96] + 32])) + 1
            mem[_1927] = _1923
            require _1903 + _1919 + _1923 + 64 <= ('cd', 4).length + 32
            mem[_1927 + 32 len ceil32(_1923)] = mem[_1888 + _1903 + _1919 + 64 len ceil32(_1923)]
            if ceil32(_1923) <= _1923:
                mem[_1907 + 64] = _1927
                require mem[_1888 + _1903 + 128] == ('signextend', 0, ('mem', ('range', ('add', 128, ('var', '_1888'), ('var', '_1903')), 32)))
                mem[_1907 + 96] = mem[_1888 + _1903 + 128]
                mem[_1907 + 128] = mem[_1888 + _1903 + 160]
                require mem[_1888 + _1903 + 192] == ('signextend', 0, ('mem', ('range', ('add', 192, ('var', '_1888'), ('var', '_1903')), 32)))
                mem[_1907 + 160] = mem[_1888 + _1903 + 192]
                mem[_1907 + 192] = mem[_1888 + _1903 + 224]
                require mem[_1888 + _1903 + 256] == mem[_1888 + _1903 + 268 len 20]
                mem[_1907 + 224] = mem[_1888 + _1903 + 256]
                require mem[_1888 + _1903 + 288] == mem[_1888 + _1903 + 316 len 4]
                mem[_1907 + 256] = mem[_1888 + _1903 + 288]
                require _1923 >= 96
                _2379 = mem[_1927 + 32]
                require mem[_1927 + 32] == mem[_1927 + 60 len 4]
                _2387 = mem[_1927 + 64]
                require mem[_1927 + 64] <= test266151307()
                require _1927 + _1923 + 32 > _1927 + mem[_1927 + 64] + 63
                _2395 = mem[_1927 + mem[_1927 + 64] + 32]
                if mem[_1927 + mem[_1927 + 64] + 32] > test266151307():
                    revert with 0, 65
                _2403 = mem[64]
                if mem[64] + floor32(mem[_1927 + mem[_1927 + 64] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_1927 + mem[_1927 + 64] + 32]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + floor32(mem[_1927 + mem[_1927 + 64] + 32]) + 1
                mem[_2403] = _2395
                require _1923 + 32 >= _2387 + (32 * _2395) + 64
                s = _1927 + _2387 + 64
                t = _2403 + 32
                idx = 0
                while idx < _2395:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _2701 = mem[_1927 + 96]
                require mem[_1927 + 96] == mem[_1927 + 124 len 4]
                if 1 > -lastRound + test266151307():
                    revert with 0, 17
                if uint32(_2379) != uint32(lastRound + 1):
                    revert with 0, 'Bridge: wrong round'
                if _2395 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > -uint32(2 * _2395 / 3) + test266151307():
                    revert with 0, 17
                _2733 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2733] = uint32(_2701)
                if uint32(_2701) > -sub_e17ddc41 + test266151307():
                    revert with 0, 17
                mem[_2733 + 32] = uint32(sub_e17ddc41 + uint32(_2701))
                mem[_2733 + 64] = uint32(_2395)
                if uint32(uint32(2 * _2395 / 3) + 1) < sub_e35d1653:
                    mem[_2733 + 96] = sub_e35d1653
                    mem[0] = uint32(_2379)
                    mem[32] = 154
                    sub_79a6d51f[_2379 << 224].field_0 = uint32(_2701)
                    sub_79a6d51f[_2379 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2701))
                    sub_79a6d51f[_2379 << 224].field_64 = uint32(_2395)
                    sub_79a6d51f[_2379 << 224].field_96 = sub_e35d1653
                    mem[mem[64]] = uint32(_2701)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2701))
                    mem[mem[64] + 64] = uint32(_2395)
                    mem[mem[64] + 96] = sub_e35d1653
                    emit 0x640133a6: _2701 << 224, sub_e17ddc41 + uint32(_2701) << 224, _2395 << 224, sub_e35d1653, uint32(_2379)
                    idx = 0
                    while idx < _2395:
                        if idx >= mem[_2403]:
                            revert with 0, 50
                        _3033 = mem[(32 * idx) + _2403 + 32]
                        mem[0] = mem[(32 * idx) + _2403 + 44 len 20]
                        mem[32] = sha3(_2379 << 224, 152)
                        stor152[_2379 << 224][address(_3033)] = 1
                        emit RoundRelay(uint32(_2379), address(_3033));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_2733 + 96] = uint32(uint32(2 * _2395 / 3) + 1)
                    mem[0] = uint32(_2379)
                    mem[32] = 154
                    sub_79a6d51f[_2379 << 224].field_0 = uint32(_2701)
                    sub_79a6d51f[_2379 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2701))
                    sub_79a6d51f[_2379 << 224].field_64 = uint32(_2395)
                    sub_79a6d51f[_2379 << 224].field_96 = uint32(uint32(2 * _2395 / 3) + 1)
                    mem[mem[64]] = uint32(_2701)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2701))
                    mem[mem[64] + 64] = uint32(_2395)
                    mem[mem[64] + 96] = uint32(uint32(2 * _2395 / 3) + 1)
                    emit 0x640133a6: _2701 << 224, sub_e17ddc41 + uint32(_2701) << 224, _2395 << 224, uint32(uint32(2 * _2395 / 3) + 1), uint32(_2379)
                    idx = 0
                    while idx < _2395:
                        if idx >= mem[_2403]:
                            revert with 0, 50
                        _3037 = mem[(32 * idx) + _2403 + 32]
                        mem[0] = mem[(32 * idx) + _2403 + 44 len 20]
                        mem[32] = sha3(_2379 << 224, 152)
                        stor152[_2379 << 224][address(_3037)] = 1
                        emit RoundRelay(uint32(_2379), address(_3037));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[_1927 + _1923 + 32] = 0
                mem[_1907 + 64] = _1927
                require mem[_1888 + _1903 + 128] == ('signextend', 0, ('mem', ('range', ('add', 128, ('var', '_1888'), ('var', '_1903')), 32)))
                mem[_1907 + 96] = mem[_1888 + _1903 + 128]
                mem[_1907 + 128] = mem[_1888 + _1903 + 160]
                require mem[_1888 + _1903 + 192] == ('signextend', 0, ('mem', ('range', ('add', 192, ('var', '_1888'), ('var', '_1903')), 32)))
                mem[_1907 + 160] = mem[_1888 + _1903 + 192]
                mem[_1907 + 192] = mem[_1888 + _1903 + 224]
                require mem[_1888 + _1903 + 256] == mem[_1888 + _1903 + 268 len 20]
                mem[_1907 + 224] = mem[_1888 + _1903 + 256]
                require mem[_1888 + _1903 + 288] == mem[_1888 + _1903 + 316 len 4]
                mem[_1907 + 256] = mem[_1888 + _1903 + 288]
                require _1923 >= 96
                _2383 = mem[_1927 + 32]
                require mem[_1927 + 32] == mem[_1927 + 60 len 4]
                _2391 = mem[_1927 + 64]
                require mem[_1927 + 64] <= test266151307()
                require _1927 + _1923 + 32 > _1927 + mem[_1927 + 64] + 63
                _2399 = mem[_1927 + mem[_1927 + 64] + 32]
                if mem[_1927 + mem[_1927 + 64] + 32] > test266151307():
                    revert with 0, 65
                _2407 = mem[64]
                if mem[64] + floor32(mem[_1927 + mem[_1927 + 64] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_1927 + mem[_1927 + 64] + 32]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + floor32(mem[_1927 + mem[_1927 + 64] + 32]) + 1
                mem[_2407] = _2399
                require _1923 + 32 >= _2391 + (32 * _2399) + 64
                s = _1927 + _2391 + 64
                t = _2407 + 32
                idx = 0
                while idx < _2399:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _2702 = mem[_1927 + 96]
                require mem[_1927 + 96] == mem[_1927 + 124 len 4]
                if 1 > -lastRound + test266151307():
                    revert with 0, 17
                if uint32(_2383) != uint32(lastRound + 1):
                    revert with 0, 'Bridge: wrong round'
                if _2399 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > -uint32(2 * _2399 / 3) + test266151307():
                    revert with 0, 17
                _2734 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2734] = uint32(_2702)
                if uint32(_2702) > -sub_e17ddc41 + test266151307():
                    revert with 0, 17
                mem[_2734 + 32] = uint32(sub_e17ddc41 + uint32(_2702))
                mem[_2734 + 64] = uint32(_2399)
                if uint32(uint32(2 * _2399 / 3) + 1) < sub_e35d1653:
                    mem[_2734 + 96] = sub_e35d1653
                    mem[0] = uint32(_2383)
                    mem[32] = 154
                    sub_79a6d51f[_2383 << 224].field_0 = uint32(_2702)
                    sub_79a6d51f[_2383 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2702))
                    sub_79a6d51f[_2383 << 224].field_64 = uint32(_2399)
                    sub_79a6d51f[_2383 << 224].field_96 = sub_e35d1653
                    mem[mem[64]] = uint32(_2702)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2702))
                    mem[mem[64] + 64] = uint32(_2399)
                    mem[mem[64] + 96] = sub_e35d1653
                    emit 0x640133a6: _2702 << 224, sub_e17ddc41 + uint32(_2702) << 224, _2399 << 224, sub_e35d1653, uint32(_2383)
                    idx = 0
                    while idx < _2399:
                        if idx >= mem[_2407]:
                            revert with 0, 50
                        _3041 = mem[(32 * idx) + _2407 + 32]
                        mem[0] = mem[(32 * idx) + _2407 + 44 len 20]
                        mem[32] = sha3(_2383 << 224, 152)
                        stor152[_2383 << 224][address(_3041)] = 1
                        emit RoundRelay(uint32(_2383), address(_3041));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_2734 + 96] = uint32(uint32(2 * _2399 / 3) + 1)
                    mem[0] = uint32(_2383)
                    mem[32] = 154
                    sub_79a6d51f[_2383 << 224].field_0 = uint32(_2702)
                    sub_79a6d51f[_2383 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2702))
                    sub_79a6d51f[_2383 << 224].field_64 = uint32(_2399)
                    sub_79a6d51f[_2383 << 224].field_96 = uint32(uint32(2 * _2399 / 3) + 1)
                    mem[mem[64]] = uint32(_2702)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2702))
                    mem[mem[64] + 64] = uint32(_2399)
                    mem[mem[64] + 96] = uint32(uint32(2 * _2399 / 3) + 1)
                    emit 0x640133a6: _2702 << 224, sub_e17ddc41 + uint32(_2702) << 224, _2399 << 224, uint32(uint32(2 * _2399 / 3) + 1), uint32(_2383)
                    idx = 0
                    while idx < _2399:
                        if idx >= mem[_2407]:
                            revert with 0, 50
                        _3045 = mem[(32 * idx) + _2407 + 32]
                        mem[0] = mem[(32 * idx) + _2407 + 44 len 20]
                        mem[32] = sha3(_2383 << 224, 152)
                        stor152[_2383 << 224][address(_3045)] = 1
                        emit RoundRelay(uint32(_2383), address(_3045));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            mem[_704 + _702 + 32] = 0
            mem[_694 + 64] = _704
            require mem[(2 * ceil32(('cd', 4).length)) + _690 + 352] == ('signextend', 0, ('mem', ('range', ('add', 352, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('cd', 4))))), ('var', '_690')), 32)))
            mem[_694 + 96] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 352]
            mem[_694 + 128] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 384]
            require mem[(2 * ceil32(('cd', 4).length)) + _690 + 416] == ('signextend', 0, ('mem', ('range', ('add', 416, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('cd', 4))))), ('var', '_690')), 32)))
            mem[_694 + 160] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 416]
            mem[_694 + 192] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 448]
            require mem[(2 * ceil32(('cd', 4).length)) + _690 + 480] == mem[(2 * ceil32(('cd', 4).length)) + _690 + 492 len 20]
            mem[_694 + 224] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 480]
            require mem[(2 * ceil32(('cd', 4).length)) + _690 + 512] == mem[(2 * ceil32(('cd', 4).length)) + _690 + 540 len 4]
            mem[_694 + 256] = mem[(2 * ceil32(('cd', 4).length)) + _690 + 512]
            _1100 = mem[_694 + 256]
            if mem[_694 + 284 len 4] < initialRound:
                revert with 0, 'Bridge: signatures verification failed'
            if mem[_694 + 284 len 4] > lastRound:
                revert with 0, 'Bridge: signatures verification failed'
            _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
            idx = 0
            s = 0
            t = 0
            while idx < _1704:
                if idx >= mem[(3 * ceil32(('cd', 4).length)) + 256]:
                    revert with 0, 50
                _1716 = mem[(32 * idx) + (3 * ceil32(('cd', 4).length)) + 288]
                _1740 = sha3(mem[(2 * ceil32(('cd', 4).length)) + 256 len mem[(2 * ceil32(('cd', 4).length)) + 224]])
                _1741 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = _1740
                _1742 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _1744 = sha3(mem[_1742 + 32 len mem[_1742]])
                if mem[_1716] != 65:
                    if 0 <= address(t):
                        revert with 0, 'Bridge: signatures sequence wrong'
                    mem[0] = 0
                    mem[32] = sha3(_1100 << 224, 152)
                    if not stor152[_1100 << 224][0]:
                        if idx == -1:
                            revert with 0, 17
                        _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    mem[0] = 0
                    mem[32] = 153
                    if stor153[0]:
                        if idx == -1:
                            revert with 0, 17
                        _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    if uint32(s) == test266151307():
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = uint32(s) + 1
                    t = 0
                    continue 
                _1762 = mem[_1716 + 32]
                _1763 = mem[_1716 + 64]
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_1716')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_1716')), 32))), 0) - 256 >= 27:
                    if 0 <= address(t):
                        revert with 0, 'Bridge: signatures sequence wrong'
                    mem[0] = 0
                    mem[32] = sha3(_1100 << 224, 152)
                    if not stor152[_1100 << 224][0]:
                        if idx == -1:
                            revert with 0, 17
                        _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    mem[0] = 0
                    mem[32] = 153
                    if stor153[0]:
                        if idx == -1:
                            revert with 0, 17
                        _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                        idx = idx + 1
                        s = s
                        t = 0
                        continue 
                    if uint32(s) == test266151307():
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = uint32(s) + 1
                    t = 0
                    continue 
                mem[_1741 + 92] = 0
                mem[64] = _1741 + 124
                mem[_1741 + 124] = _1744
                mem[_1741 + 156] = 27
                mem[_1741 + 188] = _1762
                mem[_1741 + 220] = _1763
                signer = erecover(_1744, 27, _1762, _1763) 
                mem[_1741 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(t):
                    revert with 0, 'Bridge: signatures sequence wrong'
                mem[0] = address(signer)
                mem[32] = sha3(_1100 << 224, 152)
                if not stor152[_1100 << 224][address(signer)]:
                    if idx == -1:
                        revert with 0, 17
                    _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = s
                    t = signer
                    continue 
                mem[0] = address(signer)
                mem[32] = 153
                if stor153[address(signer)]:
                    if idx == -1:
                        revert with 0, 17
                    _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                    idx = idx + 1
                    s = s
                    t = signer
                    continue 
                if uint32(s) == test266151307():
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _1704 = mem[(3 * ceil32(('cd', 4).length)) + 256]
                idx = idx + 1
                s = uint32(s) + 1
                t = signer
                continue 
            if uint32(s) < sub_79a6d51f[_1100 << 224].field_96:
                revert with 0, 'Bridge: signatures verification failed'
            mem[0] = uint32(_1100)
            mem[32] = 154
            if block.timestamp > sub_79a6d51f[_1100 << 224].field_32:
                revert with 0, 'Bridge: signatures verification failed'
            if paused:
                revert with 0, 'Bridge: signatures verification failed'
            require ('cd', 4).length >= 32
            require ('cd', 4)[0] <= test266151307()
            require ('cd', 4).length - ('cd', 4)[0] >= 288
            _1814 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            require cd[(cd[4] + ('cd', 4)[0] + 36)] == uint64(cd[(cd[4] + ('cd', 4)[0] + 36)])
            mem[_1814] = cd[(cd[4] + ('cd', 4)[0] + 36)]
            require cd[(cd[4] + ('cd', 4)[0] + 68)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 68)])
            mem[_1814 + 32] = cd[(cd[4] + ('cd', 4)[0] + 68)]
            require cd[(cd[4] + ('cd', 4)[0] + 100)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 67 < cd[4] + ('cd', 4).length + 36
            if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] > test266151307():
                revert with 0, 65
            _1868 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 1
            mem[_1868] = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]
            require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 68 <= ('cd', 4).length + 36
            mem[_1868 + 32 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]] = call.data[cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 68 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]]
            mem[_1868 + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 32] = 0
            mem[_1814 + 64] = _1868
            require cd[(cd[4] + ('cd', 4)[0] + 132)] == ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
            mem[_1814 + 96] = cd[(cd[4] + ('cd', 4)[0] + 132)]
            mem[_1814 + 128] = cd[(cd[4] + ('cd', 4)[0] + 164)]
            require cd[(cd[4] + ('cd', 4)[0] + 196)] == ('signextend', 0, ('cd', ('add', 196, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
            mem[_1814 + 160] = cd[(cd[4] + ('cd', 4)[0] + 196)]
            mem[_1814 + 192] = cd[(cd[4] + ('cd', 4)[0] + 228)]
            require cd[(cd[4] + ('cd', 4)[0] + 260)] == address(cd[(cd[4] + ('cd', 4)[0] + 260)])
            mem[_1814 + 224] = cd[(cd[4] + ('cd', 4)[0] + 260)]
            require cd[(cd[4] + ('cd', 4)[0] + 292)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 292)])
            mem[_1814 + 256] = cd[(cd[4] + ('cd', 4)[0] + 292)]
            if ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4)))))) != ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor157', 157))))):
                revert with 0, 'Bridge: wrong event configuration'
            if cd[(cd[4] + ('cd', 4)[0] + 164)] != stor158:
                revert with 0, 'Bridge: wrong event configuration'
            _1891 = mem[64]
            mem[64] = mem[64] + ceil32(('cd', 4).length) + 32
            mem[_1891] = ('cd', 4).length
            mem[_1891 + 32 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[_1891 + ('cd', 4).length + 32] = 0
            require ('cd', 4).length >= 32
            _1904 = mem[_1891 + 32]
            require mem[_1891 + 32] <= test266151307()
            require ('cd', 4).length - mem[_1891 + 32] >= 288
            _1908 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            require mem[_1891 + _1904 + 32] == mem[_1891 + _1904 + 56 len 8]
            mem[_1908] = mem[_1891 + _1904 + 32]
            require mem[_1891 + _1904 + 64] == mem[_1891 + _1904 + 92 len 4]
            mem[_1908 + 32] = mem[_1891 + _1904 + 64]
            _1920 = mem[_1891 + _1904 + 96]
            require mem[_1891 + _1904 + 96] <= test266151307()
            require _1891 + _1904 + mem[_1891 + _1904 + 96] + 63 < _1891 + ('cd', 4).length + 32
            _1924 = mem[_1891 + _1904 + mem[_1891 + _1904 + 96] + 32]
            if mem[_1891 + _1904 + mem[_1891 + _1904 + 96] + 32] > test266151307():
                revert with 0, 65
            _1928 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1891 + _1904 + mem[_1891 + _1904 + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1891 + _1904 + mem[_1891 + _1904 + 96] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1891 + _1904 + mem[_1891 + _1904 + 96] + 32])) + 1
            mem[_1928] = _1924
            require _1904 + _1920 + _1924 + 64 <= ('cd', 4).length + 32
            mem[_1928 + 32 len ceil32(_1924)] = mem[_1891 + _1904 + _1920 + 64 len ceil32(_1924)]
            if ceil32(_1924) <= _1924:
                mem[_1908 + 64] = _1928
                require mem[_1891 + _1904 + 128] == ('signextend', 0, ('mem', ('range', ('add', 128, ('var', '_1891'), ('var', '_1904')), 32)))
                mem[_1908 + 96] = mem[_1891 + _1904 + 128]
                mem[_1908 + 128] = mem[_1891 + _1904 + 160]
                require mem[_1891 + _1904 + 192] == ('signextend', 0, ('mem', ('range', ('add', 192, ('var', '_1891'), ('var', '_1904')), 32)))
                mem[_1908 + 160] = mem[_1891 + _1904 + 192]
                mem[_1908 + 192] = mem[_1891 + _1904 + 224]
                require mem[_1891 + _1904 + 256] == mem[_1891 + _1904 + 268 len 20]
                mem[_1908 + 224] = mem[_1891 + _1904 + 256]
                require mem[_1891 + _1904 + 288] == mem[_1891 + _1904 + 316 len 4]
                mem[_1908 + 256] = mem[_1891 + _1904 + 288]
                require _1924 >= 96
                _2380 = mem[_1928 + 32]
                require mem[_1928 + 32] == mem[_1928 + 60 len 4]
                _2388 = mem[_1928 + 64]
                require mem[_1928 + 64] <= test266151307()
                require _1928 + _1924 + 32 > _1928 + mem[_1928 + 64] + 63
                _2396 = mem[_1928 + mem[_1928 + 64] + 32]
                if mem[_1928 + mem[_1928 + 64] + 32] > test266151307():
                    revert with 0, 65
                _2404 = mem[64]
                if mem[64] + floor32(mem[_1928 + mem[_1928 + 64] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_1928 + mem[_1928 + 64] + 32]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + floor32(mem[_1928 + mem[_1928 + 64] + 32]) + 1
                mem[_2404] = _2396
                require _1924 + 32 >= _2388 + (32 * _2396) + 64
                s = _1928 + _2388 + 64
                t = _2404 + 32
                idx = 0
                while idx < _2396:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _2703 = mem[_1928 + 96]
                require mem[_1928 + 96] == mem[_1928 + 124 len 4]
                if 1 > -lastRound + test266151307():
                    revert with 0, 17
                if uint32(_2380) != uint32(lastRound + 1):
                    revert with 0, 'Bridge: wrong round'
                if _2396 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > -uint32(2 * _2396 / 3) + test266151307():
                    revert with 0, 17
                _2735 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2735] = uint32(_2703)
                if uint32(_2703) > -sub_e17ddc41 + test266151307():
                    revert with 0, 17
                mem[_2735 + 32] = uint32(sub_e17ddc41 + uint32(_2703))
                mem[_2735 + 64] = uint32(_2396)
                if uint32(uint32(2 * _2396 / 3) + 1) < sub_e35d1653:
                    mem[_2735 + 96] = sub_e35d1653
                    mem[0] = uint32(_2380)
                    mem[32] = 154
                    sub_79a6d51f[_2380 << 224].field_0 = uint32(_2703)
                    sub_79a6d51f[_2380 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2703))
                    sub_79a6d51f[_2380 << 224].field_64 = uint32(_2396)
                    sub_79a6d51f[_2380 << 224].field_96 = sub_e35d1653
                    mem[mem[64]] = uint32(_2703)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2703))
                    mem[mem[64] + 64] = uint32(_2396)
                    mem[mem[64] + 96] = sub_e35d1653
                    emit 0x640133a6: _2703 << 224, sub_e17ddc41 + uint32(_2703) << 224, _2396 << 224, sub_e35d1653, uint32(_2380)
                    idx = 0
                    while idx < _2396:
                        if idx >= mem[_2404]:
                            revert with 0, 50
                        _3049 = mem[(32 * idx) + _2404 + 32]
                        mem[0] = mem[(32 * idx) + _2404 + 44 len 20]
                        mem[32] = sha3(_2380 << 224, 152)
                        stor152[_2380 << 224][address(_3049)] = 1
                        emit RoundRelay(uint32(_2380), address(_3049));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_2735 + 96] = uint32(uint32(2 * _2396 / 3) + 1)
                    mem[0] = uint32(_2380)
                    mem[32] = 154
                    sub_79a6d51f[_2380 << 224].field_0 = uint32(_2703)
                    sub_79a6d51f[_2380 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2703))
                    sub_79a6d51f[_2380 << 224].field_64 = uint32(_2396)
                    sub_79a6d51f[_2380 << 224].field_96 = uint32(uint32(2 * _2396 / 3) + 1)
                    mem[mem[64]] = uint32(_2703)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2703))
                    mem[mem[64] + 64] = uint32(_2396)
                    mem[mem[64] + 96] = uint32(uint32(2 * _2396 / 3) + 1)
                    emit 0x640133a6: _2703 << 224, sub_e17ddc41 + uint32(_2703) << 224, _2396 << 224, uint32(uint32(2 * _2396 / 3) + 1), uint32(_2380)
                    idx = 0
                    while idx < _2396:
                        if idx >= mem[_2404]:
                            revert with 0, 50
                        _3053 = mem[(32 * idx) + _2404 + 32]
                        mem[0] = mem[(32 * idx) + _2404 + 44 len 20]
                        mem[32] = sha3(_2380 << 224, 152)
                        stor152[_2380 << 224][address(_3053)] = 1
                        emit RoundRelay(uint32(_2380), address(_3053));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[_1928 + _1924 + 32] = 0
                mem[_1908 + 64] = _1928
                require mem[_1891 + _1904 + 128] == ('signextend', 0, ('mem', ('range', ('add', 128, ('var', '_1891'), ('var', '_1904')), 32)))
                mem[_1908 + 96] = mem[_1891 + _1904 + 128]
                mem[_1908 + 128] = mem[_1891 + _1904 + 160]
                require mem[_1891 + _1904 + 192] == ('signextend', 0, ('mem', ('range', ('add', 192, ('var', '_1891'), ('var', '_1904')), 32)))
                mem[_1908 + 160] = mem[_1891 + _1904 + 192]
                mem[_1908 + 192] = mem[_1891 + _1904 + 224]
                require mem[_1891 + _1904 + 256] == mem[_1891 + _1904 + 268 len 20]
                mem[_1908 + 224] = mem[_1891 + _1904 + 256]
                require mem[_1891 + _1904 + 288] == mem[_1891 + _1904 + 316 len 4]
                mem[_1908 + 256] = mem[_1891 + _1904 + 288]
                require _1924 >= 96
                _2384 = mem[_1928 + 32]
                require mem[_1928 + 32] == mem[_1928 + 60 len 4]
                _2392 = mem[_1928 + 64]
                require mem[_1928 + 64] <= test266151307()
                require _1928 + _1924 + 32 > _1928 + mem[_1928 + 64] + 63
                _2400 = mem[_1928 + mem[_1928 + 64] + 32]
                if mem[_1928 + mem[_1928 + 64] + 32] > test266151307():
                    revert with 0, 65
                _2408 = mem[64]
                if mem[64] + floor32(mem[_1928 + mem[_1928 + 64] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_1928 + mem[_1928 + 64] + 32]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + floor32(mem[_1928 + mem[_1928 + 64] + 32]) + 1
                mem[_2408] = _2400
                require _1924 + 32 >= _2392 + (32 * _2400) + 64
                s = _1928 + _2392 + 64
                t = _2408 + 32
                idx = 0
                while idx < _2400:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _2704 = mem[_1928 + 96]
                require mem[_1928 + 96] == mem[_1928 + 124 len 4]
                if 1 > -lastRound + test266151307():
                    revert with 0, 17
                if uint32(_2384) != uint32(lastRound + 1):
                    revert with 0, 'Bridge: wrong round'
                if _2400 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > -uint32(2 * _2400 / 3) + test266151307():
                    revert with 0, 17
                _2736 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2736] = uint32(_2704)
                if uint32(_2704) > -sub_e17ddc41 + test266151307():
                    revert with 0, 17
                mem[_2736 + 32] = uint32(sub_e17ddc41 + uint32(_2704))
                mem[_2736 + 64] = uint32(_2400)
                if uint32(uint32(2 * _2400 / 3) + 1) < sub_e35d1653:
                    mem[_2736 + 96] = sub_e35d1653
                    mem[0] = uint32(_2384)
                    mem[32] = 154
                    sub_79a6d51f[_2384 << 224].field_0 = uint32(_2704)
                    sub_79a6d51f[_2384 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2704))
                    sub_79a6d51f[_2384 << 224].field_64 = uint32(_2400)
                    sub_79a6d51f[_2384 << 224].field_96 = sub_e35d1653
                    mem[mem[64]] = uint32(_2704)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2704))
                    mem[mem[64] + 64] = uint32(_2400)
                    mem[mem[64] + 96] = sub_e35d1653
                    emit 0x640133a6: _2704 << 224, sub_e17ddc41 + uint32(_2704) << 224, _2400 << 224, sub_e35d1653, uint32(_2384)
                    idx = 0
                    while idx < _2400:
                        if idx >= mem[_2408]:
                            revert with 0, 50
                        _3057 = mem[(32 * idx) + _2408 + 32]
                        mem[0] = mem[(32 * idx) + _2408 + 44 len 20]
                        mem[32] = sha3(_2384 << 224, 152)
                        stor152[_2384 << 224][address(_3057)] = 1
                        emit RoundRelay(uint32(_2384), address(_3057));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_2736 + 96] = uint32(uint32(2 * _2400 / 3) + 1)
                    mem[0] = uint32(_2384)
                    mem[32] = 154
                    sub_79a6d51f[_2384 << 224].field_0 = uint32(_2704)
                    sub_79a6d51f[_2384 << 224].field_32 = uint32(sub_e17ddc41 + uint32(_2704))
                    sub_79a6d51f[_2384 << 224].field_64 = uint32(_2400)
                    sub_79a6d51f[_2384 << 224].field_96 = uint32(uint32(2 * _2400 / 3) + 1)
                    mem[mem[64]] = uint32(_2704)
                    mem[mem[64] + 32] = uint32(sub_e17ddc41 + uint32(_2704))
                    mem[mem[64] + 64] = uint32(_2400)
                    mem[mem[64] + 96] = uint32(uint32(2 * _2400 / 3) + 1)
                    emit 0x640133a6: _2704 << 224, sub_e17ddc41 + uint32(_2704) << 224, _2400 << 224, uint32(uint32(2 * _2400 / 3) + 1), uint32(_2384)
                    idx = 0
                    while idx < _2400:
                        if idx >= mem[_2408]:
                            revert with 0, 50
                        _3061 = mem[(32 * idx) + _2408 + 32]
                        mem[0] = mem[(32 * idx) + _2408 + 44 len 20]
                        mem[32] = sha3(_2384 << 224, 152)
                        stor152[_2384 << 224][address(_3061)] = 1
                        emit RoundRelay(uint32(_2384), address(_3061));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        if lastRound == test266151307():
            revert with 0, 17
        lastRound = uint32(lastRound + 1)
        stor151[_327] = 1
}



}
