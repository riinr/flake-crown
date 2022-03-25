{
  description = ''ImGui Frontend for Nimble'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NimbleImGui-master.flake = false;
  inputs.src-NimbleImGui-master.ref   = "refs/heads/master";
  inputs.src-NimbleImGui-master.owner = "qb-0";
  inputs.src-NimbleImGui-master.repo  = "NimbleImGui";
  inputs.src-NimbleImGui-master.type  = "github";
  
  inputs."nimgl".owner = "nim-nix-pkgs";
  inputs."nimgl".ref   = "master";
  inputs."nimgl".repo  = "nimgl";
  inputs."nimgl".dir   = "1_3_2";
  inputs."nimgl".type  = "github";
  inputs."nimgl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NimbleImGui-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-NimbleImGui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}