{
  description = ''DataFrame API enabling fast out-of-core data analytics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimdata-master.flake = false;
  inputs.src-nimdata-master.ref   = "refs/heads/master";
  inputs.src-nimdata-master.owner = "bluenote10";
  inputs.src-nimdata-master.repo  = "NimData";
  inputs.src-nimdata-master.type  = "github";
  
  inputs."zip".owner = "nim-nix-pkgs";
  inputs."zip".ref   = "master";
  inputs."zip".repo  = "zip";
  inputs."zip".dir   = "0_3_1";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly".owner = "nim-nix-pkgs";
  inputs."plotly".ref   = "master";
  inputs."plotly".repo  = "plotly";
  inputs."plotly".dir   = "v0_3_0";
  inputs."plotly".type  = "github";
  inputs."plotly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimdata-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimdata-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}