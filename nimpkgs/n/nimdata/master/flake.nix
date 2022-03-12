{
  description = ''DataFrame API enabling fast out-of-core data analytics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimdata-master.flake = false;
  inputs.src-nimdata-master.owner = "bluenote10";
  inputs.src-nimdata-master.ref   = "refs/heads/master";
  inputs.src-nimdata-master.repo  = "NimData";
  inputs.src-nimdata-master.type  = "github";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly".dir   = "nimpkgs/p/plotly";
  inputs."plotly".owner = "riinr";
  inputs."plotly".ref   = "flake-pinning";
  inputs."plotly".repo  = "flake-nimble";
  inputs."plotly".type  = "github";
  inputs."plotly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NimData-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-NimData-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}