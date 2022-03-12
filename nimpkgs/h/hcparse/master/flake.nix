{
  description = ''High-level nim wrapper for C/C++ parsing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hcparse-master.flake = false;
  inputs.src-hcparse-master.owner = "haxscramper";
  inputs.src-hcparse-master.ref   = "refs/heads/master";
  inputs.src-hcparse-master.repo  = "hcparse";
  inputs.src-hcparse-master.type  = "github";
  
  inputs."hnimast".owner = "nim-nix-pkgs";
  inputs."hnimast".ref   = "master";
  inputs."hnimast".repo  = "hnimast";
  inputs."hnimast".type  = "github";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse".owner = "nim-nix-pkgs";
  inputs."htsparse".ref   = "master";
  inputs."htsparse".repo  = "htsparse";
  inputs."htsparse".type  = "github";
  inputs."htsparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/haxscramper/frosty".owner = "nim-nix-pkgs";
  inputs."https://github.com/haxscramper/frosty".ref   = "master";
  inputs."https://github.com/haxscramper/frosty".repo  = "https://github.com/haxscramper/frosty";
  inputs."https://github.com/haxscramper/frosty".type  = "github";
  inputs."https://github.com/haxscramper/frosty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/haxscramper/frosty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc".owner = "nim-nix-pkgs";
  inputs."hmisc".ref   = "master";
  inputs."hmisc".repo  = "hmisc";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hcparse-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hcparse-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}