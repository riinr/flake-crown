{
  description = ''The core types and functions of the SciNim ecosystem'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-scinim-main.flake = false;
  inputs.src-scinim-main.owner = "SciNim";
  inputs.src-scinim-main.ref   = "refs/heads/main";
  inputs.src-scinim-main.repo  = "scinim";
  inputs.src-scinim-main.type  = "github";
  
  inputs."fusion".owner = "nim-nix-pkgs";
  inputs."fusion".ref   = "master";
  inputs."fusion".repo  = "fusion";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polynumeric".owner = "nim-nix-pkgs";
  inputs."polynumeric".ref   = "master";
  inputs."polynumeric".repo  = "polynumeric";
  inputs."polynumeric".type  = "github";
  inputs."polynumeric".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polynumeric".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpy".owner = "nim-nix-pkgs";
  inputs."nimpy".ref   = "master";
  inputs."nimpy".repo  = "nimpy";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-scinim-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-scinim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}