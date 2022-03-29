contract main {




// =====================  Runtime code  =====================


#
#  - advanceToRound(uint256 arg1, uint256 arg2)
#  - claim(uint256 arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_d8906f3d(?)
#
const sub_303238a2(?) = 200

const sub_30e3a035(?) = 10

const relayHubVersion = ''

const sub_b361b00f(?) = 100000000000 * 10^18

const percentPrecision = 10^6

const sub_ffe8e372(?) = 10^6


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
address owner;
address hubAddr;
address stor103;
address sub_89304061Address;
address sub_0015d5b1Address;
array of uint256 subreddit;
uint256 lastRound;
uint256 startBlockNumber;
mapping of struct stor110;
uint256 initialSupply;
uint256 sub_f9714c0c;
uint256 sub_2ad9b698;
uint256 sub_51ad5a97;
array of struct sub_c32be428;
uint256 stor118;
address sub_5a5f2194Address;
array of address stor11591756326471999264895421442065030704299572019615264954066775150057963321363;
array of uint256 stor11591756326471999264895421442065030704299572019615264954066775150057963321364;

function sub_0015d5b1(?) payable {
    return sub_0015d5b1Address
}

function sub_2ad9b698(?) payable {
    return sub_2ad9b698
}

function initialSupply() payable {
    return initialSupply
}

function startBlockNumber() payable {
    return startBlockNumber
}

function sub_51ad5a97(?) payable {
    return sub_51ad5a97
}

function sub_5a5f2194(?) payable {
    return sub_5a5f2194Address
}

function getHubAddr() payable {
    return hubAddr
}

function lastRound() payable {
    return lastRound
}

function sub_89304061(?) payable {
    return sub_89304061Address
}

function owner() payable {
    return owner
}

function subreddit() payable {
    return subreddit[0 len subreddit.length]
}

function sub_c32be428(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c32be428.length
    return sub_c32be428[arg1].field_0, uint256(sub_c32be428[arg1].field_256)
}

function totalSharedOwners() payable {
    return sub_c32be428.length
}

function sub_f9714c0c(?) payable {
    return sub_f9714c0c
}

function _fallback() payable {
    revert
}

function minClaimableRound() payable {
    if lastRound < sub_f9714c0c:
        return 0
    if sub_f9714c0c > lastRound:
        revert with 0, 'SafeMath: subtraction overflow'
    return (lastRound - sub_f9714c0c)
}

function isOwner() payable {
    if hubAddr != msg.sender:
        return (msg.sender == owner)
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    return (mem[calldata.size + 108 len 20] == owner)
}

function renounceOwnership() payable {
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateRoundsBeforeExpiration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
    sub_f9714c0c = arg1
    emit RoundsBeforeExpirationUpdated(arg1);
}

function setDefaultRelayHub() payable {
    if 0xd216153c06e857cd7f72665e0af1d7d82172f494 == hubAddr:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6447534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
                    mem[209 len 19]
    emit RelayHubChanged(hubAddr, 0xd216153c06e857cd7f72665e0af1d7d82172f494);
    hubAddr = 0xd216153c06e857cd7f72665e0af1d7d82172f494
}

function postRelayedCall(bytes arg1, bool arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x5347534e526563697069656e743a2063616c6c6572206973206e6f742052656c61794875,
                    mem[200 len 28]
}

function preRelayedCall(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x5347534e526563697069656e743a2063616c6c6572206973206e6f742052656c61794875,
                    mem[200 len 28]
    mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x594f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[202 len 26]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        38,
                        0x594f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 234 len 26]
    ('bool', ('param', 'arg1'))
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateGSNApprover(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        57,
                        0x7347534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
                        mem[221 len 7]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        57,
                        0x7347534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 253 len 7]
    ('bool', ('param', 'arg1'))
    stor103 = arg1
    emit SignerUpdated(arg1);
}

function updateKarmaSource(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x30446973747269627574696f6e733a206b61726d6120736f757263652073686f756c64206e6f7420626520,
                        mem[207 len 21]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        43,
                        0x30446973747269627574696f6e733a206b61726d6120736f757263652073686f756c64206e6f7420626520,
                        mem[ceil32(calldata.size) + 239 len 21]
    ('bool', ('param', 'arg1'))
    sub_5a5f2194Address = sub_0015d5b1Address
    sub_0015d5b1Address = arg1
    emit KarmaSourceUpdated(address(arg1), sub_0015d5b1Address);
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not hubAddr:
        if 0xd216153c06e857cd7f72665e0af1d7d82172f494 == hubAddr:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x6447534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
                        mem[209 len 19]
        emit RelayHubChanged(hubAddr, 0xd216153c06e857cd7f72665e0af1d7d82172f494);
        hubAddr = 0xd216153c06e857cd7f72665e0af1d7d82172f494
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function updateSupplyDecayPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
        if arg1 >= 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        63,
                        0x73446973747269627574696f6e733a20737570706c79446563617950657263656e742073686f756c64206265203c2050455243454e545f505245434953494f,
                        mem[227 len 1]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
        if arg1 >= 10^6:
            revert with 0, 
                        32,
                        63,
                        0x73446973747269627574696f6e733a20737570706c79446563617950657263656e742073686f756c64206265203c2050455243454e545f505245434953494f,
                        mem[ceil32(calldata.size) + 259 len 1]
    ('lt', ('param', 'arg1'), 1000000)
    sub_51ad5a97 = arg1
    emit SupplyDecayPercentUpdated(arg1);
}

function acceptRelayedCall(address arg1, address arg2, bytes arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 480 len arg8.length] = arg8[all]
    mem[ceil32(arg3.length) + arg8.length + 480] = 0
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 512] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 540] = sha3(address(arg1), address(arg2), Array(len=arg3.length, data=arg3[all]), arg4, arg5, arg6, arg7, hubAddr, address(this.address))
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 480] = 60
    if 65 == arg8.length:
        if mem[ceil32(arg3.length) + 512] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            if stor103 != 0:
                return 11, 64, 0
            else:
                return 0, 64, 0
        else:
            if stor103 != 0:
                return 11, 64, 0
            else:
                return 0, 64, 0
    else:
        if stor103 != 0:
            return 11, 64, 0
        else:
            return 0, 64, 0
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x7347534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
                    mem[221 len 7]
    stor103 = arg1
    emit SignerUpdated(arg1);
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not hubAddr:
        if 0xd216153c06e857cd7f72665e0af1d7d82172f494 == hubAddr:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x6447534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
                        mem[209 len 19]
        emit RelayHubChanged(hubAddr, 0xd216153c06e857cd7f72665e0af1d7d82172f494);
        hubAddr = 0xd216153c06e857cd7f72665e0af1d7d82172f494
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function updateSharedOwner(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
        if arg2 >= 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0x73446973747269627574696f6e733a20736861726564206f776e6572732070657263656e742073686f756c64206265203c2070657263656e74507265636973696f,
                        mem[229 len 31]
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0x64446973747269627574696f6e733a20736861726564206f776e657273206c696d697420726561636865642c20736565204d41585f5348415245445f4f574e4552,
                        mem[229 len 31]
        if 200 <= sub_c32be428.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0x64446973747269627574696f6e733a20736861726564206f776e657273206c696d697420726561636865642c20736565204d41585f5348415245445f4f574e4552,
                        mem[229 len 31]
        idx = 0
        s = 0
        while idx < sub_c32be428.length:
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 0
            mem[_108 + 32] = 0
            mem[0] = 116
            _118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_118] = sub_c32be428[idx].field_0
            mem[_118 + 32] = uint256(sub_c32be428[idx].field_256)
            if arg1 != sub_c32be428[idx].field_0:
                idx = idx + 1
                s = s
                continue 
            if arg2:
                require idx < sub_c32be428.length
                mem[0] = 116
                uint256(sub_c32be428[idx].field_256) = arg2
            else:
                if idx != sub_c32be428.length - 1:
                    require sub_c32be428.length - 1 < sub_c32be428.length
                    require idx < sub_c32be428.length
                    mem[0] = 116
                    sub_c32be428[idx].field_0 = sub_c32be428[sub_c32be428.length - 1].field_0
                    uint256(sub_c32be428[idx].field_256) = uint256(sub_c32be428[sub_c32be428.length - 1].field_256)
                sub_c32be428.length--
                if sub_c32be428.length > sub_c32be428.length - 1:
                    mem[0] = 116
                    s = sha3(116) + (2 * sub_c32be428.length - 1)
                    while sha3(116) + (2 * sub_c32be428.length) > s:
                        stor[s] = 0
                        stor1[s] = 0
                        s = s + 2
                        continue 
            idx = idx + 1
            s = 1
            continue 
        if s:
            idx = 0
            s = 0
            while idx < sub_c32be428.length:
                mem[0] = 116
                if s + uint256(sub_c32be428[idx].field_256) < uint256(sub_c32be428[idx].field_256):
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + uint256(sub_c32be428[idx].field_256)
                continue 
            if s * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length >= 10^6:
                revert with 0, 
                            32,
                            45,
                            0x30446973747269627574696f6e733a2063616e277420736861726520616c6c2031303025206f6620706f696e74,
                            mem[mem[64] + 113 len 19]
            mem[32] = 110
            if stor118:
                if hubAddr != msg.sender:
                    emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                else:
                    _281 = mem[64]
                    mem[64] = mem[64] + ceil32(calldata.size) + 32
                    mem[_281] = calldata.size
                    mem[_281 + 32 len calldata.size] = call.data[0 len calldata.size]
                    emit SharedOwnerUpdated(arg2, mem[calldata.size + _281 + 12 len 20], arg1);
            else:
                if not uint256(stor110[stor108].field_0):
                    if hubAddr != msg.sender:
                        emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                    else:
                        _295 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_295] = calldata.size
                        mem[_295 + 32 len calldata.size] = call.data[0 len calldata.size]
                        emit SharedOwnerUpdated(arg2, mem[calldata.size + _295 + 12 len 20], arg1);
                else:
                    idx = 0
                    while idx < sub_c32be428.length:
                        mem[0] = 116
                        _390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_390] = sub_c32be428[idx].field_0
                        mem[_390 + 32] = uint256(sub_c32be428[idx].field_256)
                        if not uint256(stor110[stor108].field_0):
                            _423 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_423] = 26
                            mem[_423 + 32] = 'SafeMath: division by zero'
                        else:
                            if uint256(sub_c32be428[idx].field_256) * uint256(stor110[stor108].field_0) / uint256(stor110[stor108].field_0) != uint256(sub_c32be428[idx].field_256):
                                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_435] = 26
                            mem[_435 + 32] = 'SafeMath: division by zero'
                            if uint256(sub_c32be428[idx].field_256) * uint256(stor110[stor108].field_0) / 10^6 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    uint256(stor110[stor108].field_256) = 0
                    if hubAddr != msg.sender:
                        emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                    else:
                        _401 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_401] = calldata.size
                        mem[_401 + 32 len calldata.size] = call.data[0 len calldata.size]
                        emit SharedOwnerUpdated(arg2, mem[calldata.size + _401 + 12 len 20], arg1);
        else:
            if arg2:
                _112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_112] = arg1
                mem[_112 + 32] = arg2
                sub_c32be428.length++
                stor19A0[stor116.length] = arg1
                stor19A0[stor116.length] = arg2
                idx = 0
                s = 0
                while idx < sub_c32be428.length:
                    mem[0] = 116
                    if s + uint256(sub_c32be428[idx].field_256) < uint256(sub_c32be428[idx].field_256):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s + uint256(sub_c32be428[idx].field_256)
                    continue 
                if s * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length >= 10^6:
                    revert with 0, 
                                32,
                                45,
                                0x30446973747269627574696f6e733a2063616e277420736861726520616c6c2031303025206f6620706f696e74,
                                mem[mem[64] + 113 len 19]
                mem[32] = 110
                if stor118:
                    if hubAddr != msg.sender:
                        emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                    else:
                        _283 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_283] = calldata.size
                        mem[_283 + 32 len calldata.size] = call.data[0 len calldata.size]
                        emit SharedOwnerUpdated(arg2, mem[calldata.size + _283 + 12 len 20], arg1);
                else:
                    if not uint256(stor110[stor108].field_0):
                        if hubAddr != msg.sender:
                            emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                        else:
                            _299 = mem[64]
                            mem[64] = mem[64] + ceil32(calldata.size) + 32
                            mem[_299] = calldata.size
                            mem[_299 + 32 len calldata.size] = call.data[0 len calldata.size]
                            emit SharedOwnerUpdated(arg2, mem[calldata.size + _299 + 12 len 20], arg1);
                    else:
                        idx = 0
                        while idx < sub_c32be428.length:
                            mem[0] = 116
                            _392 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_392] = sub_c32be428[idx].field_0
                            mem[_392 + 32] = uint256(sub_c32be428[idx].field_256)
                            if not uint256(stor110[stor108].field_0):
                                _424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_424] = 26
                                mem[_424 + 32] = 'SafeMath: division by zero'
                            else:
                                if uint256(sub_c32be428[idx].field_256) * uint256(stor110[stor108].field_0) / uint256(stor110[stor108].field_0) != uint256(sub_c32be428[idx].field_256):
                                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _436 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_436] = 26
                                mem[_436 + 32] = 'SafeMath: division by zero'
                                if uint256(sub_c32be428[idx].field_256) * uint256(stor110[stor108].field_0) / 10^6 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        uint256(stor110[stor108].field_256) = 0
                        if hubAddr != msg.sender:
                            emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                        else:
                            _403 = mem[64]
                            mem[64] = mem[64] + ceil32(calldata.size) + 32
                            mem[_403] = calldata.size
                            mem[_403 + 32 len calldata.size] = call.data[0 len calldata.size]
                            emit SharedOwnerUpdated(arg2, mem[calldata.size + _403 + 12 len 20], arg1);
    else:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
        if arg2 >= 10^6:
            revert with 0, 
                        32,
                        65,
                        0x73446973747269627574696f6e733a20736861726564206f776e6572732070657263656e742073686f756c64206265203c2070657263656e74507265636973696f,
                        mem[ceil32(calldata.size) + 261 len 31]
        if arg2 <= 0:
            revert with 0, 
                        32,
                        65,
                        0x64446973747269627574696f6e733a20736861726564206f776e657273206c696d697420726561636865642c20736565204d41585f5348415245445f4f574e4552,
                        mem[ceil32(calldata.size) + 261 len 31]
        if 200 <= sub_c32be428.length:
            revert with 0, 
                        32,
                        65,
                        0x64446973747269627574696f6e733a20736861726564206f776e657273206c696d697420726561636865642c20736565204d41585f5348415245445f4f574e4552,
                        mem[ceil32(calldata.size) + 261 len 31]
        idx = 0
        s = 0
        while idx < sub_c32be428.length:
            _107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_107] = 0
            mem[_107 + 32] = 0
            mem[0] = 116
            _116 = mem[64]
            mem[64] = mem[64] + 64
            mem[_116] = sub_c32be428[idx].field_0
            mem[_116 + 32] = uint256(sub_c32be428[idx].field_256)
            if arg1 != sub_c32be428[idx].field_0:
                idx = idx + 1
                s = s
                continue 
            if arg2:
                require idx < sub_c32be428.length
                mem[0] = 116
                uint256(sub_c32be428[idx].field_256) = arg2
            else:
                if idx != sub_c32be428.length - 1:
                    require sub_c32be428.length - 1 < sub_c32be428.length
                    require idx < sub_c32be428.length
                    mem[0] = 116
                    sub_c32be428[idx].field_0 = sub_c32be428[sub_c32be428.length - 1].field_0
                    uint256(sub_c32be428[idx].field_256) = uint256(sub_c32be428[sub_c32be428.length - 1].field_256)
                sub_c32be428.length--
                if sub_c32be428.length > sub_c32be428.length - 1:
                    mem[0] = 116
                    s = sha3(116) + (2 * sub_c32be428.length - 1)
                    while sha3(116) + (2 * sub_c32be428.length) > s:
                        stor[s] = 0
                        stor1[s] = 0
                        s = s + 2
                        continue 
            idx = idx + 1
            s = 1
            continue 
        if s:
            idx = 0
            s = 0
            while idx < sub_c32be428.length:
                mem[0] = 116
                if s + uint256(sub_c32be428[idx].field_256) < uint256(sub_c32be428[idx].field_256):
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + uint256(sub_c32be428[idx].field_256)
                continue 
            if s * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length >= 10^6:
                revert with 0, 
                            32,
                            45,
                            0x30446973747269627574696f6e733a2063616e277420736861726520616c6c2031303025206f6620706f696e74,
                            mem[mem[64] + 113 len 19]
            mem[32] = 110
            if stor118:
                if hubAddr != msg.sender:
                    emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                else:
                    _277 = mem[64]
                    mem[64] = mem[64] + ceil32(calldata.size) + 32
                    mem[_277] = calldata.size
                    mem[_277 + 32 len calldata.size] = call.data[0 len calldata.size]
                    emit SharedOwnerUpdated(arg2, mem[calldata.size + _277 + 12 len 20], arg1);
            else:
                if not uint256(stor110[stor108].field_0):
                    if hubAddr != msg.sender:
                        emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                    else:
                        _287 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_287] = calldata.size
                        mem[_287 + 32 len calldata.size] = call.data[0 len calldata.size]
                        emit SharedOwnerUpdated(arg2, mem[calldata.size + _287 + 12 len 20], arg1);
                else:
                    idx = 0
                    while idx < sub_c32be428.length:
                        mem[0] = 116
                        _386 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_386] = sub_c32be428[idx].field_0
                        mem[_386 + 32] = uint256(sub_c32be428[idx].field_256)
                        if not uint256(stor110[stor108].field_0):
                            _421 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_421] = 26
                            mem[_421 + 32] = 'SafeMath: division by zero'
                        else:
                            if uint256(sub_c32be428[idx].field_256) * uint256(stor110[stor108].field_0) / uint256(stor110[stor108].field_0) != uint256(sub_c32be428[idx].field_256):
                                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _433 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_433] = 26
                            mem[_433 + 32] = 'SafeMath: division by zero'
                            if uint256(sub_c32be428[idx].field_256) * uint256(stor110[stor108].field_0) / 10^6 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    uint256(stor110[stor108].field_256) = 0
                    if hubAddr != msg.sender:
                        emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                    else:
                        _397 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_397] = calldata.size
                        mem[_397 + 32 len calldata.size] = call.data[0 len calldata.size]
                        emit SharedOwnerUpdated(arg2, mem[calldata.size + _397 + 12 len 20], arg1);
        else:
            if arg2:
                _109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_109] = arg1
                mem[_109 + 32] = arg2
                sub_c32be428.length++
                stor19A0[stor116.length] = arg1
                stor19A0[stor116.length] = arg2
                idx = 0
                s = 0
                while idx < sub_c32be428.length:
                    mem[0] = 116
                    if s + uint256(sub_c32be428[idx].field_256) < uint256(sub_c32be428[idx].field_256):
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s + uint256(sub_c32be428[idx].field_256)
                    continue 
                if s * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length * sub_c32be428.length >= 10^6:
                    revert with 0, 
                                32,
                                45,
                                0x30446973747269627574696f6e733a2063616e277420736861726520616c6c2031303025206f6620706f696e74,
                                mem[mem[64] + 113 len 19]
                mem[32] = 110
                if stor118:
                    if hubAddr != msg.sender:
                        emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                    else:
                        _279 = mem[64]
                        mem[64] = mem[64] + ceil32(calldata.size) + 32
                        mem[_279] = calldata.size
                        mem[_279 + 32 len calldata.size] = call.data[0 len calldata.size]
                        emit SharedOwnerUpdated(arg2, mem[calldata.size + _279 + 12 len 20], arg1);
                else:
                    if not uint256(stor110[stor108].field_0):
                        if hubAddr != msg.sender:
                            emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                        else:
                            _291 = mem[64]
                            mem[64] = mem[64] + ceil32(calldata.size) + 32
                            mem[_291] = calldata.size
                            mem[_291 + 32 len calldata.size] = call.data[0 len calldata.size]
                            emit SharedOwnerUpdated(arg2, mem[calldata.size + _291 + 12 len 20], arg1);
                    else:
                        idx = 0
                        while idx < sub_c32be428.length:
                            mem[0] = 116
                            _388 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_388] = sub_c32be428[idx].field_0
                            mem[_388 + 32] = uint256(sub_c32be428[idx].field_256)
                            if not uint256(stor110[stor108].field_0):
                                _422 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_422] = 26
                                mem[_422 + 32] = 'SafeMath: division by zero'
                            else:
                                if uint256(sub_c32be428[idx].field_256) * uint256(stor110[stor108].field_0) / uint256(stor110[stor108].field_0) != uint256(sub_c32be428[idx].field_256):
                                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _434 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_434] = 26
                                mem[_434 + 32] = 'SafeMath: division by zero'
                                if uint256(sub_c32be428[idx].field_256) * uint256(stor110[stor108].field_0) / 10^6 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        uint256(stor110[stor108].field_256) = 0
                        if hubAddr != msg.sender:
                            emit SharedOwnerUpdated(arg2, msg.sender, arg1);
                        else:
                            _399 = mem[64]
                            mem[64] = mem[64] + ceil32(calldata.size) + 32
                            mem[_399] = calldata.size
                            mem[_399 + 32 len calldata.size] = call.data[0 len calldata.size]
                            emit SharedOwnerUpdated(arg2, mem[calldata.size + _399 + 12 len 20], arg1);
}



}
