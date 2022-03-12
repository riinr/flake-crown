{
  description = ''Lock-free threadsafe MPMC with high throughput'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-loony-0_1_7.flake = false;
  inputs.src-loony-0_1_7.owner = "shayanhabibi";
  inputs.src-loony-0_1_7.ref   = "refs/tags/0.1.7";
  inputs.src-loony-0_1_7.repo  = "loony";
  inputs.src-loony-0_1_7.type  = "github";
  
  inputs."https://github.com/disruptek/balls".owner = "nim-nix-pkgs";
  inputs."https://github.com/disruptek/balls".ref   = "master";
  inputs."https://github.com/disruptek/balls".repo  = "https://github.com/disruptek/balls";
  inputs."https://github.com/disruptek/balls".type  = "github";
  inputs."https://github.com/disruptek/balls".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/nim-works/cps".owner = "nim-nix-pkgs";
  inputs."https://github.com/nim-works/cps".ref   = "master";
  inputs."https://github.com/nim-works/cps".repo  = "https://github.com/nim-works/cps";
  inputs."https://github.com/nim-works/cps".type  = "github";
  inputs."https://github.com/nim-works/cps".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/nim-works/cps".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-loony-0_1_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-loony-0_1_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}