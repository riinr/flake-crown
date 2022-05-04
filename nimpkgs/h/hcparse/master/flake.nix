{
  description = ''High-level nim wrapper for C/C++ parsing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hcparse-master.flake = false;
  inputs.src-hcparse-master.ref   = "refs/heads/master";
  inputs.src-hcparse-master.owner = "haxscramper";
  inputs.src-hcparse-master.repo  = "hcparse";
  inputs.src-hcparse-master.type  = "github";
  
  inputs."hnimast".owner = "nim-nix-pkgs";
  inputs."hnimast".ref   = "master";
  inputs."hnimast".repo  = "hnimast";
  inputs."hnimast".dir   = "v0_4_2";
  inputs."hnimast".type  = "github";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse".owner = "nim-nix-pkgs";
  inputs."htsparse".ref   = "master";
  inputs."htsparse".repo  = "htsparse";
  inputs."htsparse".dir   = "0_1_14";
  inputs."htsparse".type  = "github";
  inputs."htsparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/haxscramper/frosty".owner = "nim-nix-pkgs";
  inputs."github.com/haxscramper/frosty".ref   = "master";
  inputs."github.com/haxscramper/frosty".repo  = "github.com/haxscramper/frosty";
  inputs."github.com/haxscramper/frosty".dir   = "";
  inputs."github.com/haxscramper/frosty".type  = "github";
  inputs."github.com/haxscramper/frosty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/haxscramper/frosty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc".owner = "nim-nix-pkgs";
  inputs."hmisc".ref   = "master";
  inputs."hmisc".repo  = "hmisc";
  inputs."hmisc".dir   = "v0_14_6";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hcparse-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hcparse-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}