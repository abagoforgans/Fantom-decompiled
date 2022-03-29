contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#
const relayHubVersion = ''


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address hubAddr;
address stor103;
uint256 renewBefore;
uint256 duration;
uint256 price;
mapping of uint256 expiration;
mapping of uint32 stor108;
address stor109;

function expiration(address arg1) payable {
    require calldata.size - 4 >= 32
    return expiration[address(arg1)]
}

function duration() payable {
    return duration
}

function renewBefore() payable {
    return renewBefore
}

function getHubAddr() payable {
    return hubAddr
}

function owner() payable {
    return owner
}

function price() payable {
    return price
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

function updatePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe537562736372697074696f6e733a2070726963652073686f756c64206265203e20,
                        mem[198 len 30]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
        if arg1 <= 0:
            revert with 0, 
                        32,
                        34,
                        0xfe537562736372697074696f6e733a2070726963652073686f756c64206265203e20,
                        mem[ceil32(calldata.size) + 230 len 30]
    ('gt', ('param', 'arg1'), 0)
    price = arg1
    emit PriceUpdated(arg1);
}

function updateDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x30537562736372697074696f6e733a206475726174696f6e2073686f756c64206265203e20,
                        mem[201 len 27]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
        if arg1 <= 0:
            revert with 0, 
                        32,
                        37,
                        0x30537562736372697074696f6e733a206475726174696f6e2073686f756c64206265203e20,
                        mem[ceil32(calldata.size) + 233 len 27]
    ('gt', ('param', 'arg1'), 0)
    duration = arg1
    emit DurationUpdated(arg1);
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
                        0x794f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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
                        0x794f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 234 len 26]
    ('bool', ('param', 'arg1'))
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateRenewBefore(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, '0Ownable: caller is not the owne'
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64537562736372697074696f6e733a2072656e65774265666f72652073686f756c64206265203e20,
                        mem[204 len 24]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, '0Ownable: caller is not the owne'
        if arg1 <= 0:
            revert with 0, 
                        32,
                        40,
                        0x64537562736372697074696f6e733a2072656e65774265666f72652073686f756c64206265203e20,
                        mem[ceil32(calldata.size) + 236 len 24]
    ('gt', ('param', 'arg1'), 0)
    renewBefore = arg1
    emit RenewBeforeUpdated(arg1);
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
                        0x6547534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
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
                        0x6547534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
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
                        0x6447534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
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

function renew(address arg1) payable {
    require calldata.size - 4 >= 32
    if not address(stor108[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73537562736372697074696f6e733a20737562736372697074696f6e2069732063616e63656c65,
                    mem[203 len 25]
    if renewBefore + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if expiration[address(arg1)] >= renewBefore + block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30537562736372697074696f6e733a20746f6f206561726c7920746f2072656e65,
                    mem[197 len 31]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x30537562736372697074696f6e733a20726563697069656e742073686f756c64206e6f7420626520,
                    mem[204 len 24]
    if expiration[address(arg1)] >= block.timestamp:
        if duration + expiration[address(arg1)] < expiration[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        expiration[address(arg1)] += duration
        emit Subscribed(price, duration + expiration[address(arg1)], 1, arg1, address(stor108[address(arg1)]));
    else:
        if duration + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        expiration[address(arg1)] = duration + block.timestamp
        emit Subscribed(price, duration + block.timestamp, 1, arg1, address(stor108[address(arg1)]));
    require ext_code.size(stor109)
    call stor109.0xfc673c4f with:
         gas gas_remaining wei
        args 0, uint32(stor108[address(arg1)]), price, 128, 192, 0, mem[260], 0, mem[324]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                    0x6547534e526563697069656e745369676e61747572653a2074727573746564207369676e657220697320746865207a65726f20616464726573,
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

function cancel(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if address(stor108[address(arg1)]) != msg.sender:
            if hubAddr != msg.sender:
                if arg1 != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                71,
                                0x30537562736372697074696f6e733a20737562736372697074696f6e2063616e2062652063616e63656c6c6564206279207061796572206f7220726563697069656e74206f6e6c,
                                mem[235 len 25]
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                if mem[calldata.size + 108 len 20] != arg1:
                    revert with 0, 
                                32,
                                71,
                                0x30537562736372697074696f6e733a20737562736372697074696f6e2063616e2062652063616e63656c6c6564206279207061796572206f7220726563697069656e74206f6e6c,
                                mem[ceil32(calldata.size) + 267 len 25]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != address(stor108[address(arg1)]):
            if hubAddr != msg.sender:
                if arg1 != msg.sender:
                    revert with 0, 
                                32,
                                71,
                                0x30537562736372697074696f6e733a20737562736372697074696f6e2063616e2062652063616e63656c6c6564206279207061796572206f7220726563697069656e74206f6e6c,
                                mem[ceil32(calldata.size) + 267 len 25]
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                if mem[calldata.size + ceil32(calldata.size) + 140 len 20] != arg1:
                    revert with 0, 
                                32,
                                71,
                                0x30537562736372697074696f6e733a20737562736372697074696f6e2063616e2062652063616e63656c6c6564206279207061796572206f7220726563697069656e74206f6e6c,
                                mem[(2 * ceil32(calldata.size)) + 299 len 25]
    address(stor108[address(arg1)]) = 0
    emit Canceled(expiration[address(arg1)], arg1);
}

function subscribe(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if hubAddr != msg.sender:
        if arg2:
            address(stor108[address(arg1)]) = msg.sender
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x30537562736372697074696f6e733a20726563697069656e742073686f756c64206e6f7420626520,
                        mem[204 len 24]
        if expiration[address(arg1)] >= block.timestamp:
            if duration + expiration[address(arg1)] < expiration[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            expiration[address(arg1)] += duration
            emit Subscribed(price, duration + expiration[address(arg1)], arg2, arg1, msg.sender);
        else:
            if duration + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            expiration[address(arg1)] = duration + block.timestamp
            emit Subscribed(price, duration + block.timestamp, arg2, arg1, msg.sender);
        require ext_code.size(stor109)
        call stor109.0xfc673c4f with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), price, 128, 192, 0, mem[260], 0, mem[324]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg2:
            address(stor108[address(arg1)]) = mem[calldata.size + 108 len 20]
        if not arg1:
            revert with 0, 
                        32,
                        40,
                        0x30537562736372697074696f6e733a20726563697069656e742073686f756c64206e6f7420626520,
                        mem[ceil32(calldata.size) + 236 len 24]
        if expiration[address(arg1)] >= block.timestamp:
            if duration + expiration[address(arg1)] < expiration[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            expiration[address(arg1)] += duration
            emit Subscribed(price, duration + expiration[address(arg1)], arg2, arg1, mem[calldata.size + 108 len 20]);
        else:
            if duration + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            expiration[address(arg1)] = duration + block.timestamp
            emit Subscribed(price, duration + block.timestamp, arg2, arg1, mem[calldata.size + 108 len 20]);
        require ext_code.size(stor109)
        call stor109.0xfc673c4f with:
             gas gas_remaining wei
            args mem[calldata.size + 108 len 20], price, 128, 192, 0, mem[ceil32(calldata.size) + 292], 0, mem[ceil32(calldata.size) + 356]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
