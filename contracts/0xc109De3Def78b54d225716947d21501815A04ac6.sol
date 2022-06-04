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
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    operatorAddress = arg1
}

function updateVerifier(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
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
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x745368616465436173682073657454617850657263656e743a2053686f6c642062652066726f6d203020746f206d617854617850657263656e,
                    mem[221 len 7]
    taxPercent = arg1
}

function isSpentArray(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[9319 len 32 * arg1.length]
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

function hashLeftRight(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0, '_left should be inside the field'
    if arg2 >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c,
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

function addRecipient(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6553686164654361736820616464526563697069656e743a2053686f6c642062652066726f6d203020746f206d6178416c6c6f63506f696e,
                    mem[220 len 8]
    idx = 0
    while idx < sub_301b18de.length:
        mem[0] = 110
        if sub_301b18de[idx].field_0 == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x6453686164654361736820616464526563697069656e743a20526563697069656e7420616c7265616479206578697374,
                        mem[212 len 16]
        idx = idx + 1
        continue 
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg2
    sub_301b18de.length++
    stor9930[stor110.length] = arg1
    stor9930[stor110.length] = arg2
}

function sub_9123dad2(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    if arg1 >= sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6553686164654361736820736574526563697069656e74416c6c6f63506f696e744174496e6465783a204e6f207375636820696e6465,
                    mem[218 len 10]
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x7853686164654361736820736574526563697069656e74416c6c6f63506f696e744174496e6465783a2053686f6c642062652066726f6d203020746f206d6178416c6c6f63506f696e,
                    mem[237 len 23]
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
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    if not sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x735368616465436173682072656d6f7665526563697069656e744174496e6465783a204e6f20726563697069656e74,
                    mem[211 len 17]
    if arg1 >= sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x785368616465436173682072656d6f7665526563697069656e744174496e6465783a204e6f207375636820696e6465,
                    mem[211 len 17]
    if sub_301b18de[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint -= sub_301b18de[arg1].field_256
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
                    52,
                    0x77536861646543617368206465706f7369743a2054686520636f6d6d69746d656e7420686173206265656e207375626d69747465,
                    mem[216 len 12]
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
                revert with 0, 32, 33, 0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
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
            revert with 0, 32, 33, 0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
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
                    0x655368616465436173685f46544d5f313030205f70726f636573734465706f7369743a20506c656173652073656e6420606d697844656e6f6d696e6174696f6e6020616c6f6e672077697468207472616e73616374696f,
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x755368616465436173682077697468647261773a204665652065786365656473207472616e736665722076616c75,
                    mem[210 len 18]
    mem[0] = arg3
    mem[32] = 106
    if stor106[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x15368616465436173682077697468647261773a20546865206e6f746520686173206265656e20616c7265616479207370656e,
                    mem[215 len 13]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x645368616465436173682077697468647261773a2043616e6e6f742066696e6420796f7572206d65726b6c6520726f6f,
                    mem[212 len 16]
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
            revert with 0, 
                        32,
                        43,
                        0x645368616465436173683a3a77697468647261773a20496e76616c69642077697468647261772070726f6f,
                        Mask(168, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
        mem[0] = arg3
        mem[32] = 106
        stor106[arg3] = 1
        if msg.value:
            revert with 0, 
                        32,
                        89,
                        0x665368616465436173685f46544d5f313030205f70726f6365737357697468647261773a204d6573736167652076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                        Mask(56, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
        if arg7:
            revert with 0, 
                        32,
                        88,
                        0x755368616465436173685f46544d5f313030205f70726f6365737357697468647261773a20526566756e642076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                        Mask(64, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
        if not taxPercent:
            if arg6 > denomination:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg4 with:
               value denomination - arg6 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                72,
                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                Mask(192, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                if arg6:
                    call arg5 with:
                       value arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        70,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                        Mask(208, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        70,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                        mem[ceil32(return_data.size) + 491 len 26]
                    ('bool', 'ext_call.success')
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                72,
                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                mem[ceil32(return_data.size) + 493 len 24]
                if arg6:
                    call arg5 with:
                       value arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        70,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                        mem[ceil32(return_data.size) + 491 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        70,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                        mem[(2 * ceil32(return_data.size)) + 492 len 26]
                    ('bool', 'ext_call.success')
        else:
            if totalAllocPoint <= 0:
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg4 with:
                   value denomination - arg6 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    72,
                                    0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                    Mask(192, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            Mask(208, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 491 len 26]
                        ('bool', 'ext_call.success')
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    72,
                                    0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                    mem[ceil32(return_data.size) + 493 len 24]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 491 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[(2 * ceil32(return_data.size)) + 492 len 26]
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
                            _347 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_347] = 26
                            mem[_347 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _347 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require idx < sub_301b18de.length
                            mem[0] = 110
                            call sub_301b18de[idx].field_0 with:
                               value 0 / totalAllocPoint wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _449 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_449] = return_data.size
                                mem[_449 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            76,
                                            0xfe5368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 144 len 20]
                        idx = idx + 1
                        continue 
                    _304 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_304] = 30
                    mem[_304 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_344] = 30
                    mem[_344 + 32] = 'SafeMath: subtraction overflow'
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg4 with:
                       value denomination - arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        72,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                        mem[mem[64] + 140 len 24]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _469 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_469] = return_data.size
                                mem[_469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[mem[64] + 138 len 26]
                    else:
                        _388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_388] = return_data.size
                        mem[_388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        72,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                        mem[mem[64] + 140 len 24]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _472 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_472] = return_data.size
                                mem[_472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[mem[64] + 138 len 26]
                else:
                    if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                        revert with 0, 
                                    32,
                                    33,
                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                    idx = 0
                    while idx < sub_301b18de.length:
                        mem[0] = 110
                        if sub_301b18de[idx].field_256 > 0:
                            require idx < sub_301b18de.length
                            mem[0] = 110
                            if not taxPercent * denomination / 10000:
                                _346 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_346] = 26
                                mem[_346 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _346 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                call sub_301b18de[idx].field_0 with:
                                   value 0 / totalAllocPoint wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _445 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_445] = return_data.size
                                    mem[_445 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _351 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_351] = 26
                                mem[_351 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _351 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                call sub_301b18de[idx].field_0 with:
                                   value sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _465 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_465] = return_data.size
                                    mem[_465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            76,
                                            0xfe5368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 144 len 20]
                        idx = idx + 1
                        continue 
                    _302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_302] = 30
                    mem[_302 + 32] = 'SafeMath: subtraction overflow'
                    if taxPercent * denomination / 10000 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _340 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_340] = 30
                    mem[_340 + 32] = 'SafeMath: subtraction overflow'
                    if arg6 > denomination - (taxPercent * denomination / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg4 with:
                       value denomination - (taxPercent * denomination / 10000) - arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        72,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                        mem[mem[64] + 140 len 24]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _461 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_461] = return_data.size
                                mem[_461 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[mem[64] + 138 len 26]
                    else:
                        _382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_382] = return_data.size
                        mem[_382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        72,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                        mem[mem[64] + 140 len 24]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if return_data.size:
                                _464 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_464] = return_data.size
                                mem[_464 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[mem[64] + 138 len 26]
    else:
        if not uint32(var21001):
            if currentRootIndex == 99:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x645368616465436173682077697468647261773a2043616e6e6f742066696e6420796f7572206d65726b6c6520726f6f,
                            mem[212 len 16]
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
                revert with 0, 
                            32,
                            43,
                            0x645368616465436173683a3a77697468647261773a20496e76616c69642077697468647261772070726f6f,
                            Mask(168, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
            mem[0] = arg3
            mem[32] = 106
            stor106[arg3] = 1
            if msg.value:
                revert with 0, 
                            32,
                            89,
                            0x665368616465436173685f46544d5f313030205f70726f6365737357697468647261773a204d6573736167652076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                            Mask(56, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if arg7:
                revert with 0, 
                            32,
                            88,
                            0x755368616465436173685f46544d5f313030205f70726f6365737357697468647261773a20526566756e642076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                            Mask(64, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if not taxPercent:
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg4 with:
                   value denomination - arg6 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    72,
                                    0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                    Mask(192, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            Mask(208, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 491 len 26]
                        ('bool', 'ext_call.success')
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    72,
                                    0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                    mem[ceil32(return_data.size) + 493 len 24]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 491 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[(2 * ceil32(return_data.size)) + 492 len 26]
                        ('bool', 'ext_call.success')
            else:
                if totalAllocPoint <= 0:
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg4 with:
                       value denomination - arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        72,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                        Mask(192, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                Mask(208, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[ceil32(return_data.size) + 491 len 26]
                            ('bool', 'ext_call.success')
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        72,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                        mem[ceil32(return_data.size) + 493 len 24]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[ceil32(return_data.size) + 491 len 26]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[(2 * ceil32(return_data.size)) + 492 len 26]
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
                                _1040 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1040] = 26
                                mem[_1040 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1040 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                call sub_301b18de[idx].field_0 with:
                                   value 0 / totalAllocPoint wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1181 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1181] = return_data.size
                                    mem[_1181 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                76,
                                                0xfe5368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                                mem[mem[64] + 144 len 20]
                            idx = idx + 1
                            continue 
                        _970 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_970] = 30
                        mem[_970 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1035] = 30
                        mem[_1035 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg4 with:
                           value denomination - arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1207 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1207] = return_data.size
                                    mem[_1207 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 138 len 26]
                        else:
                            _1102 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1102] = return_data.size
                            mem[_1102 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1210 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1210] = return_data.size
                                    mem[_1210 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 138 len 26]
                    else:
                        if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                            revert with 0, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                if not taxPercent * denomination / 10000:
                                    _1039 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1039] = 26
                                    mem[_1039 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1039 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    call sub_301b18de[idx].field_0 with:
                                       value 0 / totalAllocPoint wei
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _1177 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1177] = return_data.size
                                        mem[_1177 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1051 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1051] = 26
                                    mem[_1051 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1051 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    call sub_301b18de[idx].field_0 with:
                                       value sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint wei
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _1203 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1203] = return_data.size
                                        mem[_1203 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                76,
                                                0xfe5368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                                mem[mem[64] + 144 len 20]
                            idx = idx + 1
                            continue 
                        _968 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_968] = 30
                        mem[_968 + 32] = 'SafeMath: subtraction overflow'
                        if taxPercent * denomination / 10000 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1031 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1031] = 30
                        mem[_1031 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination - (taxPercent * denomination / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg4 with:
                           value denomination - (taxPercent * denomination / 10000) - arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1199 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1199] = return_data.size
                                    mem[_1199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 138 len 26]
                        else:
                            _1096 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1096] = return_data.size
                            mem[_1096 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1202 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1202] = return_data.size
                                    mem[_1202 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 138 len 26]
        else:
            if currentRootIndex == uint32(var21001 - 1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x645368616465436173682077697468647261773a2043616e6e6f742066696e6420796f7572206d65726b6c6520726f6f,
                            mem[212 len 16]
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
                revert with 0, 
                            32,
                            43,
                            0x645368616465436173683a3a77697468647261773a20496e76616c69642077697468647261772070726f6f,
                            Mask(168, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
            mem[0] = arg3
            mem[32] = 106
            stor106[arg3] = 1
            if msg.value:
                revert with 0, 
                            32,
                            89,
                            0x665368616465436173685f46544d5f313030205f70726f6365737357697468647261773a204d6573736167652076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                            Mask(56, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if arg7:
                revert with 0, 
                            32,
                            88,
                            0x755368616465436173685f46544d5f313030205f70726f6365737357697468647261773a20526566756e642076616c756520697320737570706f73656420746f206265207a65726f20666f722046544d20696e7374616e63,
                            Mask(64, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if not taxPercent:
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg4 with:
                   value denomination - arg6 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    72,
                                    0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                    Mask(192, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            Mask(208, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 491 len 26]
                        ('bool', 'ext_call.success')
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    72,
                                    0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                    mem[ceil32(return_data.size) + 493 len 24]
                    if arg6:
                        call arg5 with:
                           value arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[ceil32(return_data.size) + 491 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            70,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                            mem[(2 * ceil32(return_data.size)) + 492 len 26]
                        ('bool', 'ext_call.success')
            else:
                if totalAllocPoint <= 0:
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg4 with:
                       value denomination - arg6 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        72,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                        Mask(192, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                Mask(208, -1280, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1280
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[ceil32(return_data.size) + 491 len 26]
                            ('bool', 'ext_call.success')
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        72,
                                        0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                        mem[ceil32(return_data.size) + 493 len 24]
                        if arg6:
                            call arg5 with:
                               value arg6 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[ceil32(return_data.size) + 491 len 26]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[(2 * ceil32(return_data.size)) + 492 len 26]
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
                                _1038 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1038] = 26
                                mem[_1038 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1038 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                call sub_301b18de[idx].field_0 with:
                                   value 0 / totalAllocPoint wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1169 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1169] = return_data.size
                                    mem[_1169 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                76,
                                                0xfe5368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                                mem[mem[64] + 144 len 20]
                            idx = idx + 1
                            continue 
                        _962 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_962] = 30
                        mem[_962 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1029 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1029] = 30
                        mem[_1029 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg4 with:
                           value denomination - arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1193 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1193] = return_data.size
                                    mem[_1193 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 138 len 26]
                        else:
                            _1091 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1091] = return_data.size
                            mem[_1091 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1196 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1196] = return_data.size
                                    mem[_1196 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 138 len 26]
                    else:
                        if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                            revert with 0, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                if not taxPercent * denomination / 10000:
                                    _1037 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1037] = 26
                                    mem[_1037 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1037 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    call sub_301b18de[idx].field_0 with:
                                       value 0 / totalAllocPoint wei
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _1165 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1165] = return_data.size
                                        mem[_1165 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1044 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1044] = 26
                                    mem[_1044 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1044 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    call sub_301b18de[idx].field_0 with:
                                       value sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint wei
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _1189 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1189] = return_data.size
                                        mem[_1189 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                76,
                                                0xfe5368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2074617820726563697069656e7420646964206e6f7420676f20746872,
                                                mem[mem[64] + 144 len 20]
                            idx = idx + 1
                            continue 
                        _960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_960] = 30
                        mem[_960 + 32] = 'SafeMath: subtraction overflow'
                        if taxPercent * denomination / 10000 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1025] = 30
                        mem[_1025 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination - (taxPercent * denomination / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg4 with:
                           value denomination - (taxPercent * denomination / 10000) - arg6 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1185 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1185] = return_data.size
                                    mem[_1185 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 138 len 26]
                        else:
                            _1085 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1085] = return_data.size
                            mem[_1085 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            72,
                                            0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f20726563697069656e7420646964206e6f7420676f20746872,
                                            mem[mem[64] + 140 len 24]
                            if arg6:
                                call arg5 with:
                                   value arg6 wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    _1188 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1188] = return_data.size
                                    mem[_1188 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                70,
                                                0x745368616465436173685f46544d5f313030205f70726f6365737357697468647261773a205061796d656e7420746f2072656c6179657220646964206e6f7420676f20746872,
                                                mem[mem[64] + 138 len 26]
    emit Withdrawal(address(arg4), arg3, arg6, arg5);
    stor104 = 1
}



}
