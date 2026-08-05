// Azazel parity model for mach. First landable slice: mpsc, mach's
// multi-producer/single-consumer Queue + Pool (src/mpsc.zig), a core
// datastructure that imports only std. Built on the mach-nominated Zig
// toolchain (0.17.0-dev), which Azazel reaches via the "0.17" lane. mach's
// own build.zig hard-pins a single 0.16-dev build; Azazel builds the file
// directly and sidesteps that gate.
package build

toolchain: zig: {
	lanes: ["0.17"]
	preferred: "0.17"
}

mach_mpsc: #Module & {
	kind: "static"
	root: "src/mpsc.zig"
}
