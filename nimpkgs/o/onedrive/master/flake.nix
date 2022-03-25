{
  description = ''Get information on files and folders in OneDrive.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-onedrive-master.flake = false;
  inputs.src-onedrive-master.ref   = "refs/heads/master";
  inputs.src-onedrive-master.owner = "ThomasTJdev";
  inputs.src-onedrive-master.repo  = "nim_onedrive";
  inputs.src-onedrive-master.type  = "github";
  
  inputs."packedjson".owner = "nim-nix-pkgs";
  inputs."packedjson".ref   = "master";
  inputs."packedjson".repo  = "packedjson";
  inputs."packedjson".dir   = "0_2_2";
  inputs."packedjson".type  = "github";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-onedrive-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-onedrive-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}