contract main {




// =====================  Runtime code  =====================


const sub_76816091(?) = 1000

const sub_f5dd34b9(?) = 1000

const FIELD_SIZE = 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000

const ROOT_HISTORY_SIZE = 100

const ZERO_VALUE = 0x2fe54c60d3acabf3343a35b6eba15db4821b340f76e741e2249685ed4899af6c


uint32 levels;
array of uint256 filledSubtrees;
array of uint256 zeros;
uint32 currentRootIndex;
uint32 nextIndex; offset 32
array of uint256 lastRoot;
uint256 stor103;
uint8 stor104;
uint256 denomination;
mapping of uint8 stor106;
mapping of uint8 stor107;
address verifierAddress;
uint256 taxPercent;
array of struct sub_301b18de;
uint256 totalAllocPoint;
address operatorAddress;
array of address stor69290179047559764897525587595065000388900846244344453231461793201804346332202;
array of uint256 stor69290179047559764897525587595065000388900846244344453231461793201804346332203;

function totalAllocPoint() {
    return totalAllocPoint
}

function nullifierHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor106[arg1])
}

function verifier() {
    return verifierAddress
}

function sub_301b18de(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_301b18de.length
    return sub_301b18de[arg1].field_0, sub_301b18de[arg1].field_256
}

function levels() {
    return levels
}

function operator() {
    return operatorAddress
}

function taxPercent() {
    return taxPercent
}

function commitments(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor107[arg1])
}

function denomination() {
    return denomination
}

function currentRootIndex() {
    return currentRootIndex
}

function getLastRoot() {
    require currentRootIndex < 100
    return lastRoot[stor3]
}

function roots(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return lastRoot[arg1]
}

function isSpent(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor106[arg1])
}

function zeros(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < zeros.length
    return zeros[arg1]
}

function filledSubtrees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < filledSubtrees.length
    return filledSubtrees[arg1]
}

function nextIndex() {
    return nextIndex
}

function _fallback() payable {
    revert
}

function changeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x754f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    operatorAddress = arg1
}

function updateVerifier(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x754f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    verifierAddress = arg1
}

function isKnownRoot(bytes32 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require uint32(var11001) < 100
    if arg1 != lastRoot[var13001]:
        if not uint32(var15001):
            if currentRootIndex == 99:
                return 0
            if arg1 != stor103:
                var15001 = 99
                continue 
        else:
            if currentRootIndex == uint32(var15001 - 1):
                return 0
            require uint32(var15001 - 1) < 100
            if arg1 != lastRoot[uint32(var15001 - 1)]:
                var15001 = var15001 - 1
                continue 
    return 1
}

function setTaxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x754f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x6546544d5368616465436173683a3a73657454617850657263656e743a2053686f6c642062652066726f6d203020746f206d617854617850657263656e,
                    mem[225 len 3]
    taxPercent = arg1
}

function isSpentArray(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[9129 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 106
        if stor106[cd[((32 * idx) + arg1 + 36)]]:
            require idx < arg1.length
            mem[(32 * idx) + 128] = 1
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function addRecipient(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x754f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0xfe46544d5368616465436173683a3a616464526563697069656e743a2053686f6c642062652066726f6d203020746f206d6178416c6c6f63506f696e,
                    mem[224 len 4]
    idx = 0
    while idx < sub_301b18de.length:
        mem[0] = 110
        if sub_301b18de[idx].field_0 == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        52,
                        0x2e46544d5368616465436173683a3a616464526563697069656e743a20526563697069656e7420616c7265616479206578697374,
                        mem[216 len 12]
        idx = idx + 1
        continue 
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg2
    sub_301b18de.length++
    stor9930[stor110.length] = arg1
    stor9930[stor110.length] = arg2
}

function hashLeftRight(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0, '_left should be inside the field'
    if arg2 >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x745f72696768742073686f756c6420626520696e7369646520746865206669656c,
                    mem[197 len 31]
    require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
    delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
    delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mulmod(delegate.return_data[0], arg2, 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0]
}

function sub_9123dad2(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x754f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if arg1 >= sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x7846544d5368616465436173683a3a736574526563697069656e74416c6c6f63506f696e744174496e6465783a204e6f207375636820696e6465,
                    mem[222 len 6]
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    77,
                    0x6446544d5368616465436173683a3a736574526563697069656e74416c6c6f63506f696e744174496e6465783a2053686f6c642062652066726f6d203020746f206d6178416c6c6f63506f696e,
                    mem[241 len 19]
    require arg1 < sub_301b18de.length
    if sub_301b18de[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - sub_301b18de[arg1].field_256
    require arg1 < sub_301b18de.length
    sub_301b18de[arg1].field_256 = arg2
}

function sub_99036c71(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x754f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if not sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x7346544d5368616465436173683a3a72656d6f7665526563697069656e744174496e6465783a204e6f20726563697069656e74,
                    mem[215 len 13]
    if arg1 >= sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6446544d5368616465436173683a3a72656d6f7665526563697069656e744174496e6465783a204e6f207375636820696e6465,
                    mem[215 len 13]
    if sub_301b18de[arg1].field_256 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += sub_301b18de[arg1].field_256
    idx = arg1
    while idx < sub_301b18de.length - 1:
        require idx + 1 < sub_301b18de.length
        require idx < sub_301b18de.length
        mem[0] = 110
        sub_301b18de[idx].field_0 = sub_301b18de[idx + 1].field_0
        sub_301b18de[idx].field_256 = sub_301b18de[idx + 1].field_256
        idx = idx + 1
        continue 
    require sub_301b18de.length
    sub_301b18de[sub_301b18de.length - 1].field_0 = 0
    sub_301b18de[sub_301b18de.length - 1].field_256 = 0
    sub_301b18de.length--
}

function deposit(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor104:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor104 = 0
    if stor107[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7754686520636f6d6d69746d656e7420686173206265656e207375626d69747465,
                    mem[197 len 31]
    if nextIndex == uint32(2^levels):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x754d65726b6c6520747265652069732066756c6c2e204e6f206d6f7265206c656166732063616e2062652061646465,
                    mem[211 len 17]
    nextIndex = uint32(nextIndex + 1)
    idx = 0
    s = 0
    s = 0
    s = arg1
    t = nextIndex
    while uint32(idx) < levels:
        if bool(t):
            require uint32(idx) < filledSubtrees.length
            if filledSubtrees[uint32(idx)] >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
                revert with 0, '_left should be inside the field'
            if s >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
                revert with 0, 32, 33, 0x745f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
            require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
            delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args filledSubtrees[uint32(idx)], 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = 1
            mem[132] = delegate.return_data[32]
            require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
            delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mulmod(delegate.return_data[0], s, 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
            mem[96 len 64] = delegate.return_data[0 len 64]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            idx = idx + 1
            s = s
            s = filledSubtrees[uint32(idx)]
            s = delegate.return_data[0]
            t = uint32(t) / 2
            continue 
        require uint32(idx) < zeros.length
        require uint32(idx) < filledSubtrees.length
        filledSubtrees[uint32(idx)] = s
        if s >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
            revert with 0, '_left should be inside the field'
        if zeros[uint32(idx)] >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
            revert with 0, 32, 33, 0x745f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
        require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
        delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args s, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = 1
        mem[132] = delegate.return_data[32]
        require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
        delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mulmod(delegate.return_data[0], zeros[uint32(idx)], 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
        mem[96 len 64] = delegate.return_data[0 len 64]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        idx = idx + 1
        s = zeros[uint32(idx)]
        s = s
        s = delegate.return_data[0]
        t = uint32(t) / 2
        continue 
    currentRootIndex = uint32(uint32(currentRootIndex + 1) % 100)
    require uint32(uint32(currentRootIndex + 1) % 100) < 100
    lastRoot[uint32(uint32(stor3 + 1) % 100)] = s
    stor107[arg1] = 1
    if denomination != msg.value:
        revert with 0, 
                    32,
                    87,
                    0x7846544d5368616465436173683a3a5f70726f636573734465706f7369743a20506c656173652073656e6420606d697844656e6f6d696e6174696f6e602046544d20616c6f6e672077697468207472616e73616374696f,
                    mem[251 len 9]
    emit Deposit(nextIndex - 1 << 224, block.timestamp, arg1);
    stor104 = 1
}

function withdraw(bytes arg1, bytes32 arg2, bytes32 arg3, address arg4, address arg5, uint256 arg6, uint256 arg7) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not stor104:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor104 = 0
    if arg6 > denomination:
        revert with 0, 'Fee exceeds transfer value'
    mem[0] = arg3
    mem[32] = 106
    if stor106[arg3]:
        revert with 0, 'The note has been already spent'
    if not arg2:
        revert with 0, 'Cannot find your merkle root'
    require uint32(var17001) < 100
    if arg2 == lastRoot[var19001]:
        mem[96] = arg2
        mem[128] = arg3
        mem[160] = arg4
        mem[192] = arg5
        mem[224] = arg6
        mem[256] = arg7
        mem[324 len 192] = arg2, arg3, address(arg4), address(arg5), arg6, arg7
        mem[516] = arg1.length
        mem[548 len arg1.length] = arg1[all]
        mem[arg1.length + 548] = 0
        require ext_code.size(verifierAddress)
        call verifierAddress.verifyProof(bytes arg1, uint256[6] arg2) with:
             gas gas_remaining wei
            args 224, arg2, arg3, address(arg4), address(arg5), arg6, arg7 >> 1280, arg1.length, arg1[all], mem[arg1.length + 548 len ceil32(arg1.length) - arg1.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid withdraw proof'
        mem[0] = arg3
        mem[32] = 106
        stor106[arg3] = 1
        if msg.value:
            revert with 0, 
                        32,
                        85,
                        0x6446544d5368616465436173683a3a5f70726f6365737357697468647261773a204d6573736167652076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                        Mask(88, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
        if arg7:
            revert with 0, 
                        32,
                        84,
                        0x6546544d5368616465436173683a3a5f70726f6365737357697468647261773a20526566756e642076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                        Mask(96, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
        if taxPercent <= 0:
            if 0 > denomination:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg6 > denomination:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg4 with:
               value denomination - arg6 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                69,
                                0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                mem[553 len 27]
                if arg6:
                    call arg5 with:
                       value arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        67,
                                        0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                        mem[551 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        67,
                                        0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                        mem[ceil32(return_data.size) + 552 len 29]
                    ('bool', 'ext_call.success')
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                69,
                                0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                mem[ceil32(return_data.size) + 554 len 27]
                if arg6:
                    call arg5 with:
                       value arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        67,
                                        0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                        mem[ceil32(return_data.size) + 552 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        67,
                                        0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                        mem[(2 * ceil32(return_data.size)) + 553 len 29]
                    ('bool', 'ext_call.success')
        else:
            if totalAllocPoint <= 0:
                if 0 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg4 with:
                   value denomination - arg6 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                    mem[553 len 27]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[551 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 552 len 29]
                        ('bool', 'ext_call.success')
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                    mem[ceil32(return_data.size) + 554 len 27]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 552 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[(2 * ceil32(return_data.size)) + 553 len 29]
                        ('bool', 'ext_call.success')
            else:
                mem[64] = 352
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                if not denomination / 10000:
                    idx = 0
                    while idx < sub_301b18de.length:
                        mem[0] = 110
                        if sub_301b18de[idx].field_256 > 0:
                            require idx < sub_301b18de.length
                            mem[0] = 110
                            _371 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_371] = 26
                            mem[_371 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _371 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require idx < sub_301b18de.length
                            mem[0] = 110
                            call sub_301b18de[idx].field_0 with:
                               value 0 / totalAllocPoint wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _469 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_469] = return_data.size
                                mem[_469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x6e46544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                        idx = idx + 1
                        continue 
                    _333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_333] = 30
                    mem[_333 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_365] = 30
                    mem[_365 + 32] = 'SafeMath: subtraction overflow'
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg4 with:
                       value denomination - arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        69,
                                        0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                        mem[mem[64] + 137 len 27]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _489 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_489] = return_data.size
                                mem[_489 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[mem[64] + 135 len 29]
                    else:
                        _412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_412] = return_data.size
                        mem[_412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        69,
                                        0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                        mem[mem[64] + 137 len 27]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _492 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_492] = return_data.size
                                mem[_492 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[mem[64] + 135 len 29]
                else:
                    if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                        revert with 0, 
                                    32,
                                    33,
                                    0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                    idx = 0
                    while idx < sub_301b18de.length:
                        mem[0] = 110
                        if sub_301b18de[idx].field_256 > 0:
                            require idx < sub_301b18de.length
                            mem[0] = 110
                            if not taxPercent * denomination / 10000:
                                _369 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_369] = 26
                                mem[_369 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _369 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                call sub_301b18de[idx].field_0 with:
                                   value 0 / totalAllocPoint wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _465 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_465] = return_data.size
                                    mem[_465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                    revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _375 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_375] = 26
                                mem[_375 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _375 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                call sub_301b18de[idx].field_0 with:
                                   value sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _485 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_485] = return_data.size
                                    mem[_485 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x6e46544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                        idx = idx + 1
                        continue 
                    _332 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_332] = 30
                    mem[_332 + 32] = 'SafeMath: subtraction overflow'
                    if taxPercent * denomination / 10000 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_360] = 30
                    mem[_360 + 32] = 'SafeMath: subtraction overflow'
                    if arg6 > denomination - (taxPercent * denomination / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg4 with:
                       value denomination - (taxPercent * denomination / 10000) - arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        69,
                                        0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                        mem[mem[64] + 137 len 27]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _481 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_481] = return_data.size
                                mem[_481 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[mem[64] + 135 len 29]
                    else:
                        _406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_406] = return_data.size
                        mem[_406 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        69,
                                        0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                        mem[mem[64] + 137 len 27]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _484 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_484] = return_data.size
                                mem[_484 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[mem[64] + 135 len 29]
    else:
        if not uint32(var21001):
            if currentRootIndex == 99:
                revert with 0, 'Cannot find your merkle root'
            if arg2 != stor103:
                var21001 = 99
                continue 
            mem[96] = arg2
            mem[128] = arg3
            mem[160] = arg4
            mem[192] = arg5
            mem[224] = arg6
            mem[256] = arg7
            mem[324 len 192] = arg2, arg3, address(arg4), address(arg5), arg6, arg7
            mem[516] = arg1.length
            mem[548 len arg1.length] = arg1[all]
            mem[arg1.length + 548] = 0
            require ext_code.size(verifierAddress)
            call verifierAddress.verifyProof(bytes arg1, uint256[6] arg2) with:
                 gas gas_remaining wei
                args 224, arg2, arg3, address(arg4), address(arg5), arg6, arg7 >> 1280, arg1.length, arg1[all], mem[arg1.length + 548 len ceil32(arg1.length) - arg1.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid withdraw proof'
            mem[0] = arg3
            mem[32] = 106
            stor106[arg3] = 1
            if msg.value:
                revert with 0, 
                            32,
                            85,
                            0x6446544d5368616465436173683a3a5f70726f6365737357697468647261773a204d6573736167652076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                            Mask(88, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if arg7:
                revert with 0, 
                            32,
                            84,
                            0x6546544d5368616465436173683a3a5f70726f6365737357697468647261773a20526566756e642076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                            Mask(96, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if taxPercent <= 0:
                if 0 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg4 with:
                   value denomination - arg6 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                    mem[553 len 27]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[551 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 552 len 29]
                        ('bool', 'ext_call.success')
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                    mem[ceil32(return_data.size) + 554 len 27]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 552 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[(2 * ceil32(return_data.size)) + 553 len 29]
                        ('bool', 'ext_call.success')
            else:
                if totalAllocPoint <= 0:
                    if 0 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg4 with:
                       value denomination - arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        69,
                                        0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                        mem[553 len 27]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[551 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[ceil32(return_data.size) + 552 len 29]
                            ('bool', 'ext_call.success')
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        69,
                                        0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                        mem[ceil32(return_data.size) + 554 len 27]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[ceil32(return_data.size) + 552 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[(2 * ceil32(return_data.size)) + 553 len 29]
                            ('bool', 'ext_call.success')
                else:
                    mem[64] = 352
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not denomination / 10000:
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                _1112 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1112] = 26
                                mem[_1112 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1112 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                call sub_301b18de[idx].field_0 with:
                                   value 0 / totalAllocPoint wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1253 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1253] = return_data.size
                                    mem[_1253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                72,
                                                0x6e46544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                                mem[mem[64] + 140 len 24]
                            idx = idx + 1
                            continue 
                        _1061 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1061] = 30
                        mem[_1061 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1102 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1102] = 30
                        mem[_1102 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg4 with:
                           value denomination - arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            69,
                                            0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 137 len 27]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1279 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1279] = return_data.size
                                    mem[_1279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 135 len 29]
                        else:
                            _1174 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1174] = return_data.size
                            mem[_1174 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            69,
                                            0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 137 len 27]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1282 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1282] = return_data.size
                                    mem[_1282 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 135 len 29]
                    else:
                        if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                            revert with 0, 
                                        32,
                                        33,
                                        0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                if not taxPercent * denomination / 10000:
                                    _1110 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1110] = 26
                                    mem[_1110 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1110 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    call sub_301b18de[idx].field_0 with:
                                       value 0 / totalAllocPoint wei
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _1249 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1249] = return_data.size
                                        mem[_1249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1123 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1123] = 26
                                    mem[_1123 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1123 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    call sub_301b18de[idx].field_0 with:
                                       value sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint wei
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _1275 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1275] = return_data.size
                                        mem[_1275 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                72,
                                                0x6e46544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                                mem[mem[64] + 140 len 24]
                            idx = idx + 1
                            continue 
                        _1060 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1060] = 30
                        mem[_1060 + 32] = 'SafeMath: subtraction overflow'
                        if taxPercent * denomination / 10000 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1097 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1097] = 30
                        mem[_1097 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination - (taxPercent * denomination / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg4 with:
                           value denomination - (taxPercent * denomination / 10000) - arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            69,
                                            0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 137 len 27]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1271 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1271] = return_data.size
                                    mem[_1271 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 135 len 29]
                        else:
                            _1168 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1168] = return_data.size
                            mem[_1168 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            69,
                                            0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 137 len 27]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1274 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1274] = return_data.size
                                    mem[_1274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 135 len 29]
        else:
            if currentRootIndex == uint32(var21001 - 1):
                revert with 0, 'Cannot find your merkle root'
            require uint32(var21001 - 1) < 100
            if arg2 != lastRoot[uint32(var21001 - 1)]:
                var21001 = var21001 - 1
                continue 
            mem[96] = arg2
            mem[128] = arg3
            mem[160] = arg4
            mem[192] = arg5
            mem[224] = arg6
            mem[256] = arg7
            mem[324 len 192] = arg2, arg3, address(arg4), address(arg5), arg6, arg7
            mem[516] = arg1.length
            mem[548 len arg1.length] = arg1[all]
            mem[arg1.length + 548] = 0
            require ext_code.size(verifierAddress)
            call verifierAddress.verifyProof(bytes arg1, uint256[6] arg2) with:
                 gas gas_remaining wei
                args 224, arg2, arg3, address(arg4), address(arg5), arg6, arg7 >> 1280, arg1.length, arg1[all], mem[arg1.length + 548 len ceil32(arg1.length) - arg1.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid withdraw proof'
            mem[0] = arg3
            mem[32] = 106
            stor106[arg3] = 1
            if msg.value:
                revert with 0, 
                            32,
                            85,
                            0x6446544d5368616465436173683a3a5f70726f6365737357697468647261773a204d6573736167652076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                            Mask(88, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if arg7:
                revert with 0, 
                            32,
                            84,
                            0x6546544d5368616465436173683a3a5f70726f6365737357697468647261773a20526566756e642076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                            Mask(96, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if taxPercent <= 0:
                if 0 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg4 with:
                   value denomination - arg6 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                    mem[553 len 27]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[551 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 552 len 29]
                        ('bool', 'ext_call.success')
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                    mem[ceil32(return_data.size) + 554 len 27]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 552 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            67,
                                            0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                            mem[(2 * ceil32(return_data.size)) + 553 len 29]
                        ('bool', 'ext_call.success')
            else:
                if totalAllocPoint <= 0:
                    if 0 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg4 with:
                       value denomination - arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        69,
                                        0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                        mem[553 len 27]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[551 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[ceil32(return_data.size) + 552 len 29]
                            ('bool', 'ext_call.success')
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        69,
                                        0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                        mem[ceil32(return_data.size) + 554 len 27]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[ceil32(return_data.size) + 552 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[(2 * ceil32(return_data.size)) + 553 len 29]
                            ('bool', 'ext_call.success')
                else:
                    mem[64] = 352
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not denomination / 10000:
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                _1108 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1108] = 26
                                mem[_1108 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1108 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                call sub_301b18de[idx].field_0 with:
                                   value 0 / totalAllocPoint wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1241 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1241] = return_data.size
                                    mem[_1241 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                72,
                                                0x6e46544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                                mem[mem[64] + 140 len 24]
                            idx = idx + 1
                            continue 
                        _1055 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1055] = 30
                        mem[_1055 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1094 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1094] = 30
                        mem[_1094 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg4 with:
                           value denomination - arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            69,
                                            0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 137 len 27]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1265 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1265] = return_data.size
                                    mem[_1265 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 135 len 29]
                        else:
                            _1163 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1163] = return_data.size
                            mem[_1163 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            69,
                                            0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 137 len 27]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1268] = return_data.size
                                    mem[_1268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 135 len 29]
                    else:
                        if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                            revert with 0, 
                                        32,
                                        33,
                                        0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                if not taxPercent * denomination / 10000:
                                    _1106 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1106] = 26
                                    mem[_1106 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1106 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    call sub_301b18de[idx].field_0 with:
                                       value 0 / totalAllocPoint wei
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _1237 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1237] = return_data.size
                                        mem[_1237 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                        revert with 0, 32, 33, 0x75536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1116 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1116] = 26
                                    mem[_1116 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1116 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    call sub_301b18de[idx].field_0 with:
                                       value sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint wei
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _1261 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1261] = return_data.size
                                        mem[_1261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                72,
                                                0x6e46544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                                mem[mem[64] + 140 len 24]
                            idx = idx + 1
                            continue 
                        _1054 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1054] = 30
                        mem[_1054 + 32] = 'SafeMath: subtraction overflow'
                        if taxPercent * denomination / 10000 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1089 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1089] = 30
                        mem[_1089 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination - (taxPercent * denomination / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg4 with:
                           value denomination - (taxPercent * denomination / 10000) - arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            69,
                                            0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 137 len 27]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1257 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1257] = return_data.size
                                    mem[_1257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 135 len 29]
                        else:
                            _1157 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1157] = return_data.size
                            mem[_1157 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            69,
                                            0x146544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 137 len 27]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1260 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1260] = return_data.size
                                    mem[_1260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                67,
                                                0x7446544d5368616465436173683a3a5f70726f6365737357697468647261773a205061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 135 len 29]
    emit Withdrawal(address(arg4), arg3, arg6, arg5);
    stor104 = 1
}



}
