{
  description = ''JSON-Binding for deser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deser_json-master.flake = false;
  inputs.src-deser_json-master.owner = "gabbhack";
  inputs.src-deser_json-master.ref   = "refs/heads/master";
  inputs.src-deser_json-master.repo  = "deser_json";
  inputs.src-deser_json-master.type  = "github";
  
  inputs."faststreams".dir   = "nimpkgs/f/faststreams";
  inputs."faststreams".owner = "riinr";
  inputs."faststreams".ref   = "flake-pinning";
  inputs."faststreams".repo  = "flake-nimble";
  inputs."faststreams".type  = "github";
  inputs."faststreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser".dir   = "nimpkgs/d/deser";
  inputs."deser".owner = "riinr";
  inputs."deser".ref   = "flake-pinning";
  inputs."deser".repo  = "flake-nimble";
  inputs."deser".type  = "github";
  inputs."deser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deser_json-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-deser_json-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}