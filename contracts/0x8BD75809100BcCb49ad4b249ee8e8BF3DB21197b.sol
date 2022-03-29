contract main {




// =====================  Runtime code  =====================


#
#  - sub_19d58746(?)
#
const decimals = 18

const relayHubVersion = ''


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address hubAddr;
address stor103;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 subreddit;
array of uint256 name;
array of uint256 symbol;
mapping of uint8 stor160;
mapping of uint8 stor161;
mapping of uint8 stor162;
array of struct stor163;
address distributionContractAddress;
array of address stor43658028565286330362031464835422074478844716094187158437491953646570912254743;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function distributionContract() payable {
    return distributionContractAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getHubAddr() payable {
    return hubAddr
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function subreddit() payable {
    return subreddit[0 len subreddit.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    if hubAddr != msg.sender:
        return (msg.sender == owner)
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    return (mem[calldata.size + 108 len 20] == owner)
}

function isOperatorFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        return True
    if stor160[address(arg1)]:
        if not stor162[address(arg2)][address(arg1)]:
            return not bool(stor162[address(arg2)][address(arg1)])
    return bool(stor161[address(arg2)][address(arg1)])
}

function renounceOwnership() payable {
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDefaultRelayHub() payable {
    if 0xd216153c06e857cd7f72665e0af1d7d82172f494 == hubAddr:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x7347534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
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
                    0x7347534e526563697069656e743a2063616c6c6572206973206e6f742052656c61794875,
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
                    0x7347534e526563697069656e743a2063616c6c6572206973206e6f742052656c61794875,
                    mem[200 len 28]
    mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function defaultOperators() payable {
    if not stor163.length:
        mem[(32 * stor163.length) + 128] = 32
        mem[(32 * stor163.length) + 160] = stor163.length
        mem[(32 * stor163.length) + 192 len floor32(stor163.length)] = mem[128 len floor32(stor163.length)]
        return memory
          from (32 * stor163.length) + 128
           len (96 * stor163.length) + 64
    mem[128] = address(stor163.field_0)
    idx = 128
    s = 0
    while (32 * stor163.length) + 96 > idx:
        mem[idx + 32] = address(stor163[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor163.length) + 192 len floor32(stor163.length)] = mem[128 len floor32(stor163.length)]
    return Array(len=stor163.length, data=mem[128 len floor32(stor163.length)], mem[(32 * stor163.length) + floor32(stor163.length) + 192 len (32 * stor163.length) - floor32(stor163.length)]), 
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x304f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[202 len 26]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        38,
                        0x304f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 234 len 26]
    ('bool', ('param', 'arg1'))
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateDistributionContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x72537562726564646974506f696e74733a20646973747269627574696f6e436f6e74726163742073686f756c64206e6f7420626520,
                        mem[217 len 11]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        53,
                        0x72537562726564646974506f696e74733a20646973747269627574696f6e436f6e74726163742073686f756c64206e6f7420626520,
                        mem[ceil32(calldata.size) + 249 len 11]
    ('bool', ('param', 'arg1'))
    distributionContractAddress = arg1
}

function updateGSNApprover(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        57,
                        0x7947534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
                        mem[221 len 7]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        57,
                        0x7947534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 253 len 7]
    ('bool', ('param', 'arg1'))
    stor103 = arg1
    emit SignerUpdated(arg1);
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
                        0x7347534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
                        mem[209 len 19]
        emit RelayHubChanged(hubAddr, 0xd216153c06e857cd7f72665e0af1d7d82172f494);
        hubAddr = 0xd216153c06e857cd7f72665e0af1d7d82172f494
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if hubAddr != msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 232 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 230 len 30]
        allowance[mem[calldata.size + 108 len 20]][address(arg1)] = arg2
        emit Approval(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function addDefaultOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x65537562726564646974506f696e74733a206f70657261746f7220616464726573732073686f756c646e277420626520,
                        mem[212 len 16]
        if stor160[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73537562726564646974506f696e74733a206f70657261746f7220616c7265616479206578697374,
                        mem[204 len 24]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        48,
                        0x65537562726564646974506f696e74733a206f70657261746f7220616464726573732073686f756c646e277420626520,
                        mem[ceil32(calldata.size) + 244 len 16]
        if stor160[address(arg1)]:
            revert with 0, 
                        32,
                        40,
                        0x73537562726564646974506f696e74733a206f70657261746f7220616c7265616479206578697374,
                        mem[ceil32(calldata.size) + 236 len 24]
    ('iszero', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor160', 160))))
    stor163.length++
    stor6085[stor163.length] = arg1
    stor160[address(arg1)] = 1
    emit DefaultOperatorAdded(arg1);
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
                    0x7947534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
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
                        0x7347534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
                        mem[209 len 19]
        emit RelayHubChanged(hubAddr, 0xd216153c06e857cd7f72665e0af1d7d82172f494);
        hubAddr = 0xd216153c06e857cd7f72665e0af1d7d82172f494
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if hubAddr != msg.sender:
        if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        if arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] < allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 264 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 262 len 30]
        allowance[address(mem[calldata.size + 96])][address(arg1)] = arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]
        emit Approval((arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]), mem[calldata.size + 108 len 20], arg1);
    return 1
}

function removeDefaultOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x65537562726564646974506f696e74733a206f70657261746f7220616464726573732073686f756c646e277420626520,
                        mem[212 len 16]
        if not stor160[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x30537562726564646974506f696e74733a206f70657261746f7220646f65736e2774206578697374,
                        mem[204 len 24]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'eOwnable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        48,
                        0x65537562726564646974506f696e74733a206f70657261746f7220616464726573732073686f756c646e277420626520,
                        mem[ceil32(calldata.size) + 244 len 16]
        if not stor160[address(arg1)]:
            revert with 0, 
                        32,
                        40,
                        0x30537562726564646974506f696e74733a206f70657261746f7220646f65736e2774206578697374,
                        mem[ceil32(calldata.size) + 236 len 24]
    ('bool', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor160', 160))))
    idx = 0
    while idx < stor163.length:
        mem[0] = 163
        if address(stor163[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx != stor163.length - 1:
            require stor163.length - 1 < stor163.length
            require idx < stor163.length
            address(stor163[idx].field_0) = address(stor163[stor163.length].field_0)
        stor163.length--
        if stor163.length > stor163.length - 1:
            idx = stor163.length + sha3(163) - 1
            while sha3(163) + stor163.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor160[address(arg1)] = 0
        emit DefaultOperatorRemoved(arg1);
    stor160[address(arg1)] = 0
    emit DefaultOperatorRemoved(arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if hubAddr != msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        37,
                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 233 len 27]
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 231 len 29]
        if arg2 > balanceOf[address(mem[calldata.size + 96])]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(calldata.size) + 198 len 26],
                        mem[ceil32(calldata.size) + 250 len 6]
        balanceOf[address(mem[calldata.size + 96])] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if hubAddr != msg.sender:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                        mem[165 len 27],
                        mem[219 len 5]
        if not msg.sender:
            revert with 0, 32, 36, 0x7945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        return 1
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 224] = calldata.size
    mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
    if arg2 <= allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)]:
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 360 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 358 len 30]
        allowance[address(mem[calldata.size + 96])][address(arg1)] = allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)] - arg2
        emit Approval((allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)] - arg2), mem[calldata.size + 108 len 20], arg1);
        return 1
    mem[(2 * ceil32(calldata.size)) + 260] = 32
    mem[(2 * ceil32(calldata.size)) + 292] = 37
    mem[(2 * ceil32(calldata.size)) + 324 len 64] = 0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[ceil32(calldata.size) + 197 len 27]
    mem[(2 * ceil32(calldata.size)) + 356] = calldata.size % 1099511627776
    revert with 0, 
                32,
                37,
                0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                mem[ceil32(calldata.size) + 197 len 27],
                calldata.size % 1099511627776
}

function sub_ab89013b(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        if distributionContractAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0x72537562726564646974506f696e74733a206f6e6c7920646973747269627574696f6e20636f6e74726163742063616e206d696e7420706f696e74,
                        mem[223 len 5]
        if not arg2:
            revert with 0, 'ERC20: mint to the zero address'
        if arg3 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg3
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, 0, arg2);
        mem[ceil32(arg4.length) + 224] = arg5.length
        mem[ceil32(arg4.length) + 256 len arg5.length] = arg5[all]
        mem[arg5.length + ceil32(arg4.length) + 256] = 0
        emit Minted(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                    arg3,
                    96,
                    ceil32(arg4.length) + 128,
                    arg4.length,
                    arg4[all],
                    0,
                    mem[arg4.length + 256 len ceil32(arg4.length) - arg4.length],
                    arg5[all],
                    mem[ceil32(arg4.length) + arg5.length + 256 len ceil32(arg5.length) - arg5.length],
                    arg1,
                    arg2,
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != distributionContractAddress:
            revert with 0, 
                        32,
                        59,
                        0x72537562726564646974506f696e74733a206f6e6c7920646973747269627574696f6e20636f6e74726163742063616e206d696e7420706f696e74,
                        mem[ceil32(calldata.size) + 255 len 5]
        if not arg2:
            revert with 0, 'ERC20: mint to the zero address'
        if arg3 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg3
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, 0, arg2);
        mem[ceil32(calldata.size) + ceil32(arg4.length) + 256] = arg5.length
        mem[ceil32(calldata.size) + ceil32(arg4.length) + 288 len arg5.length] = arg5[all]
        mem[arg5.length + ceil32(calldata.size) + ceil32(arg4.length) + 288] = 0
        emit Minted(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                    arg3,
                    96,
                    ceil32(arg4.length) + 128,
                    arg4.length,
                    arg4[all],
                    0,
                    mem[ceil32(calldata.size) + arg4.length + 288 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length],
                    arg1,
                    arg2,
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if hubAddr != msg.sender:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    mem[192] = calldata.size
    mem[224 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 320] = calldata.size
    mem[ceil32(calldata.size) + 352 len calldata.size] = call.data[0 len calldata.size]
    if arg3 <= allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]]:
        if not arg1:
            revert with 0, 
                        32,
                        36,
                        0x7945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 456 len 28]
        if not mem[calldata.size + 204 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 454 len 30]
        allowance[address(arg1)][address(mem[calldata.size + 192])] = allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]] - arg3
        emit Approval((allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]] - arg3), arg1, mem[calldata.size + 204 len 20]);
        return 1
    mem[(2 * ceil32(calldata.size)) + 356] = 32
    mem[(2 * ceil32(calldata.size)) + 388] = 40
    mem[(2 * ceil32(calldata.size)) + 420 len 64] = 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(calldata.size) + 296 len 24]
    mem[(2 * ceil32(calldata.size)) + 452] = uint64(calldata.size)
    revert with 0, 
                32,
                40,
                0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                mem[ceil32(calldata.size) + 296 len 24],
                uint64(calldata.size)
}

function revokeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if arg1 == msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x30537562726564646974506f696e74733a207265766f6b696e672073656c66206173206f70657261746f,
                        mem[206 len 22]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x64537562726564646974506f696e74733a206f70657261746f722063616e27742068617665203020616464726573,
                        mem[210 len 18]
        if not stor160[address(arg1)]:
            if hubAddr != msg.sender:
                stor161[address(msg.sender)][address(arg1)] = 0
                emit RevokedOperator(arg1, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                stor161[mem[calldata.size + 108 len 20]][address(arg1)] = 0
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RevokedOperator(arg1, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
        else:
            if hubAddr != msg.sender:
                stor162[address(msg.sender)][address(arg1)] = 1
                emit RevokedOperator(arg1, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                stor162[mem[calldata.size + 108 len 20]][address(arg1)] = 1
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RevokedOperator(arg1, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        42,
                        0x30537562726564646974506f696e74733a207265766f6b696e672073656c66206173206f70657261746f,
                        mem[ceil32(calldata.size) + 238 len 22]
        if not arg1:
            revert with 0, 
                        32,
                        46,
                        0x64537562726564646974506f696e74733a206f70657261746f722063616e27742068617665203020616464726573,
                        mem[ceil32(calldata.size) + 242 len 18]
        if not stor160[address(arg1)]:
            if hubAddr != msg.sender:
                stor161[address(msg.sender)][address(arg1)] = 0
                emit RevokedOperator(arg1, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                stor161[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] = 0
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit RevokedOperator(arg1, mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]);
        else:
            if hubAddr != msg.sender:
                stor162[address(msg.sender)][address(arg1)] = 1
                emit RevokedOperator(arg1, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                stor162[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] = 1
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit RevokedOperator(arg1, mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]);
}

function authorizeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if msg.sender == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x73537562726564646974506f696e74733a20617574686f72697a696e672073656c66206173206f70657261746f,
                        mem[209 len 19]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x64537562726564646974506f696e74733a206f70657261746f722063616e27742068617665203020616464726573,
                        mem[210 len 18]
        if not stor160[address(arg1)]:
            if hubAddr != msg.sender:
                stor161[address(msg.sender)][address(arg1)] = 1
                emit AuthorizedOperator(arg1, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                stor161[mem[calldata.size + 108 len 20]][address(arg1)] = 1
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit AuthorizedOperator(arg1, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
        else:
            if hubAddr != msg.sender:
                stor162[address(msg.sender)][address(arg1)] = 0
                emit AuthorizedOperator(arg1, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                stor162[mem[calldata.size + 108 len 20]][address(arg1)] = 0
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit AuthorizedOperator(arg1, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] == arg1:
            revert with 0, 
                        32,
                        45,
                        0x73537562726564646974506f696e74733a20617574686f72697a696e672073656c66206173206f70657261746f,
                        mem[ceil32(calldata.size) + 241 len 19]
        if not arg1:
            revert with 0, 
                        32,
                        46,
                        0x64537562726564646974506f696e74733a206f70657261746f722063616e27742068617665203020616464726573,
                        mem[ceil32(calldata.size) + 242 len 18]
        if not stor160[address(arg1)]:
            if hubAddr != msg.sender:
                stor161[address(msg.sender)][address(arg1)] = 1
                emit AuthorizedOperator(arg1, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                stor161[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] = 1
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit AuthorizedOperator(arg1, mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]);
        else:
            if hubAddr != msg.sender:
                stor162[address(msg.sender)][address(arg1)] = 0
                emit AuthorizedOperator(arg1, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                stor162[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] = 0
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit AuthorizedOperator(arg1, mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]);
}

function operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        if arg1 != msg.sender:
            if not stor160[address(msg.sender)]:
                if not stor161[address(arg1)][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                53,
                                0x65537562726564646974506f696e74733a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                mem[217 len 11]
            else:
                if stor162[address(arg1)][address(msg.sender)]:
                    if not stor161[address(arg1)][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    53,
                                    0x65537562726564646974506f696e74733a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                    mem[217 len 11]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        mem[ceil32(arg4.length) + 320] = arg5.length
        mem[ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
        mem[arg5.length + ceil32(arg4.length) + 352] = 0
        emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                  arg3,
                  96,
                  ceil32(arg4.length) + 128,
                  arg4.length,
                  arg4[all],
                  0,
                  mem[arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length],
                  msg.sender,
                  arg1,
                  arg2,
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != arg1:
            if not stor160[mem[calldata.size + 108 len 20]]:
                if not stor161[address(arg1)][address(mem[calldata.size + 96])]:
                    revert with 0, 
                                32,
                                53,
                                0x65537562726564646974506f696e74733a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                mem[ceil32(calldata.size) + 249 len 11]
            else:
                if stor162[address(arg1)][address(mem[calldata.size + 96])]:
                    if not stor161[address(arg1)][address(mem[calldata.size + 96])]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x65537562726564646974506f696e74733a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                    mem[ceil32(calldata.size) + 249 len 11]
        if not arg1:
            revert with 0, 
                        32,
                        37,
                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 233 len 27]
        if not arg2:
            revert with 0, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 231 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(calldata.size) + 198 len 26],
                        mem[ceil32(calldata.size) + 250 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        mem[ceil32(calldata.size) + ceil32(arg4.length) + 352] = arg5.length
        mem[ceil32(calldata.size) + ceil32(arg4.length) + 384 len arg5.length] = arg5[all]
        mem[arg5.length + ceil32(calldata.size) + ceil32(arg4.length) + 384] = 0
        emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                  arg3,
                  96,
                  ceil32(arg4.length) + 128,
                  arg4.length,
                  arg4[all],
                  0,
                  mem[ceil32(calldata.size) + arg4.length + 384 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length],
                  mem[calldata.size + 108 len 20],
                  arg1,
                  arg2,
}

function burn(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        mem[96] = arg2.length
        mem[128 len arg2.length] = arg2[all]
        mem[arg2.length + 128] = 0
        mem[ceil32(arg2.length) + 128] = 0
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[ceil32(arg2.length) + 261 len 31]
        mem[ceil32(arg2.length) + 160] = 34
        mem[ceil32(arg2.length) + 192 len 34] = 0x7945524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0x7945524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(arg2.length) + 226 len 30],
                        mem[ceil32(arg2.length) + 286 len 2]
        mem[0] = msg.sender
        mem[32] = 104
        balanceOf[address(msg.sender)] -= arg1
        mem[64] = ceil32(arg2.length) + 320
        mem[ceil32(arg2.length) + 256] = 30
        mem[ceil32(arg2.length) + 288] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        mem[ceil32(arg2.length) + 320] = arg1
        mem[ceil32(arg2.length) + 352] = 96
        mem[ceil32(arg2.length) + 416] = arg2.length
        mem[ceil32(arg2.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + 384] = arg2.length + 128
            mem[arg2.length + ceil32(arg2.length) + 448] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[arg2.length + ceil32(arg2.length) + 480 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(arg2.length) + 320 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 160],
                            msg.sender,
                            msg.sender,
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + 480] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 512 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(arg2.length) + 320 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 192],
                            msg.sender,
                            msg.sender,
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            mem[ceil32(arg2.length) + 384] = floor32(arg2.length) + 160
            mem[floor32(arg2.length) + ceil32(arg2.length) + 480] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(arg2.length) + ceil32(arg2.length) + 512 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(arg2.length) + 320 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 192],
                            msg.sender,
                            msg.sender,
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 544 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(arg2.length) + 320 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 224],
                            msg.sender,
                            msg.sender,
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        mem[ceil32(calldata.size) + 128] = arg2.length
        mem[ceil32(calldata.size) + 160 len arg2.length] = arg2[all]
        mem[ceil32(calldata.size) + arg2.length + 160] = 0
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 160] = 0
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + ceil32(arg2.length) + 293 len 31]
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 192] = 34
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 224 len 34] = 0x7945524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(mem[calldata.size + 96])]:
            revert with 0, 
                        32,
                        34,
                        0x7945524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(calldata.size) + ceil32(arg2.length) + 258 len 30],
                        mem[ceil32(calldata.size) + ceil32(arg2.length) + 318 len 2]
        mem[0] = mem[calldata.size + 108 len 20]
        mem[32] = 104
        balanceOf[address(mem[calldata.size + 96])] -= arg1
        mem[64] = ceil32(calldata.size) + ceil32(arg2.length) + 352
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 288] = 30
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 320] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, mem[calldata.size + 108 len 20], 0);
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 352] = arg1
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 384] = 96
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 448] = arg2.length
        mem[ceil32(calldata.size) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(calldata.size) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(calldata.size) + ceil32(arg2.length) + 416] = arg2.length + 128
            mem[arg2.length + ceil32(calldata.size) + ceil32(arg2.length) + 480] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            mem[arg2.length + ceil32(calldata.size) + ceil32(arg2.length) + 512 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(calldata.size) + ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32:
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(calldata.size) + ceil32(arg2.length) + 352 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + arg2.length + 160],
                            mem[calldata.size + 108 len 20],
                            mem[calldata.size + 108 len 20],
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(calldata.size) + ceil32(arg2.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(calldata.size) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 544 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32]
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(calldata.size) + ceil32(arg2.length) + 352 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 192],
                            mem[calldata.size + 108 len 20],
                            mem[calldata.size + 108 len 20],
        else:
            mem[floor32(arg2.length) + ceil32(calldata.size) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + ceil32(calldata.size) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            mem[ceil32(calldata.size) + ceil32(arg2.length) + 416] = floor32(arg2.length) + 160
            mem[floor32(arg2.length) + ceil32(calldata.size) + ceil32(arg2.length) + 512] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(arg2.length) + ceil32(calldata.size) + ceil32(arg2.length) + 544 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(calldata.size) + ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32:
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(calldata.size) + ceil32(arg2.length) + 352 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 192],
                            mem[calldata.size + 108 len 20],
                            mem[calldata.size + 108 len 20],
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(calldata.size) + ceil32(arg2.length) + 544] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(calldata.size) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 576 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32]
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(calldata.size) + ceil32(arg2.length) + 352 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(calldata.size) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 224],
                            mem[calldata.size + 108 len 20],
                            mem[calldata.size + 108 len 20],
}

function operatorBurn(address arg1, uint256 arg2, bytes arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        if arg1 != msg.sender:
            if not stor160[address(msg.sender)]:
                if not stor161[address(arg1)][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                53,
                                0x65537562726564646974506f696e74733a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                mem[217 len 11]
            else:
                if stor162[address(arg1)][address(msg.sender)]:
                    if not stor161[address(arg1)][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    53,
                                    0x65537562726564646974506f696e74733a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                    mem[217 len 11]
        mem[96] = arg3.length
        mem[128 len arg3.length] = arg3[all]
        mem[arg3.length + 128] = 0
        mem[ceil32(arg3.length) + 128] = arg4.length
        mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
        mem[ceil32(arg3.length) + arg4.length + 160] = 0
        if not arg1:
            revert with 0, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 261 len 31]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 34
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 34] = 0x7945524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0x7945524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 226 len 30],
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 286 len 2]
        mem[0] = arg1
        mem[32] = 104
        balanceOf[address(arg1)] -= arg2
        mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 320
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = 30
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = 'SafeMath: subtraction overflow'
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        emit Transfer(arg2, arg1, 0);
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = 96
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                            msg.sender,
                            arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 512 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                            msg.sender,
                            arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 384] = floor32(arg3.length) + 160
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                            msg.sender,
                            arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 544 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                            msg.sender,
                            arg1,
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        if mem[calldata.size + 108 len 20] != arg1:
            if not stor160[mem[calldata.size + 108 len 20]]:
                if not stor161[address(arg1)][address(mem[calldata.size + 96])]:
                    revert with 0, 
                                32,
                                53,
                                0x65537562726564646974506f696e74733a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                mem[ceil32(calldata.size) + 249 len 11]
            else:
                if stor162[address(arg1)][address(mem[calldata.size + 96])]:
                    if not stor161[address(arg1)][address(mem[calldata.size + 96])]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x65537562726564646974506f696e74733a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                    mem[ceil32(calldata.size) + 249 len 11]
        mem[ceil32(calldata.size) + 128] = arg3.length
        mem[ceil32(calldata.size) + 160 len arg3.length] = arg3[all]
        mem[ceil32(calldata.size) + arg3.length + 160] = 0
        mem[ceil32(calldata.size) + ceil32(arg3.length) + 160] = arg4.length
        mem[ceil32(calldata.size) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
        mem[ceil32(calldata.size) + ceil32(arg3.length) + arg4.length + 192] = 0
        if not arg1:
            revert with 0, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 293 len 31]
        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = 34
        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len 34] = 0x7945524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0x7945524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 258 len 30],
                        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 318 len 2]
        mem[0] = arg1
        mem[32] = 104
        balanceOf[address(arg1)] -= arg2
        mem[64] = ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 352
        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 30
        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = 'SafeMath: subtraction overflow'
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        emit Transfer(arg2, arg1, 0);
        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg2
        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = 96
        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg3.length
        mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(calldata.size) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg3.length + 128
            mem[arg3.length + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(calldata.size) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                            mem[calldata.size + 108 len 20],
                            arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 544 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                            mem[calldata.size + 108 len 20],
                            arg1,
        else:
            mem[floor32(arg3.length) + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg3.length) + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = floor32(arg3.length) + 160
            mem[floor32(arg3.length) + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(calldata.size) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                            mem[calldata.size + 108 len 20],
                            arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 576 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                            mem[ceil32(calldata.size) + ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(calldata.size) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                            mem[calldata.size + 108 len 20],
                            arg1,
}



}
