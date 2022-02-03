{
  description = ''Lock-free threadsafe MPMC with high throughput'';
  inputs.src-loony-0_1_12.flake = false;
  inputs.src-loony-0_1_12.type = "github";
  inputs.src-loony-0_1_12.owner = "shayanhabibi";
  inputs.src-loony-0_1_12.repo = "loony";
  inputs.src-loony-0_1_12.ref = "refs/tags/0.1.12";
  
  
  inputs."https://github.com/disruptek/balls".url = "path:../../../h/https://github.com/disruptek/balls";
  inputs."https://github.com/disruptek/balls".type = "github";
  inputs."https://github.com/disruptek/balls".owner = "riinr";
  inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";

  
  inputs."https://github.com/nim-works/cps".url = "path:../../../h/https://github.com/nim-works/cps";
  inputs."https://github.com/nim-works/cps".type = "github";
  inputs."https://github.com/nim-works/cps".owner = "riinr";
  inputs."https://github.com/nim-works/cps".repo = "flake-nimble";
  inputs."https://github.com/nim-works/cps".ref = "flake-pinning";
  inputs."https://github.com/nim-works/cps".dir = "nimpkgs/h/https://github.com/nim-works/cps";

  outputs = { self, nixpkgs, src-loony-0_1_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loony-0_1_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loony-0_1_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}