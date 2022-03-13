{
  description = ''A build tool for Neverwinter Nights projects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nasher-0_11_2.flake = false;
  inputs.src-nasher-0_11_2.owner = "squattingmonk";
  inputs.src-nasher-0_11_2.ref   = "refs/tags/0.11.2";
  inputs.src-nasher-0_11_2.repo  = "nasher.nim";
  inputs.src-nasher-0_11_2.type  = "github";
  
  inputs."neverwinter".owner = "nim-nix-pkgs";
  inputs."neverwinter".ref   = "master";
  inputs."neverwinter".repo  = "neverwinter";
  inputs."neverwinter".type  = "github";
  inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob".owner = "nim-nix-pkgs";
  inputs."glob".ref   = "master";
  inputs."glob".repo  = "glob";
  inputs."glob".type  = "github";
  inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nasher-0_11_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nasher-0_11_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}