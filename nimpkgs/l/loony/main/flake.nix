{
  description = ''Lock-free threadsafe MPMC with high throughput'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-loony-main.flake = false;
  inputs.src-loony-main.owner = "shayanhabibi";
  inputs.src-loony-main.ref   = "refs/heads/main";
  inputs.src-loony-main.repo  = "loony";
  inputs.src-loony-main.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-loony-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-loony-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}