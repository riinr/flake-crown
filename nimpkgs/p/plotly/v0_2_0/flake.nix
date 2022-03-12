{
  description = ''Nim interface to plotly'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-plotly-v0_2_0.flake = false;
  inputs.src-plotly-v0_2_0.owner = "SciNim";
  inputs.src-plotly-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-plotly-v0_2_0.repo  = "nim-plotly";
  inputs.src-plotly-v0_2_0.type  = "github";
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsbind".dir   = "nimpkgs/j/jsbind";
  inputs."jsbind".owner = "riinr";
  inputs."jsbind".ref   = "flake-pinning";
  inputs."jsbind".repo  = "flake-nimble";
  inputs."jsbind".type  = "github";
  inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webview".dir   = "nimpkgs/w/webview";
  inputs."webview".owner = "riinr";
  inputs."webview".ref   = "flake-pinning";
  inputs."webview".repo  = "flake-nimble";
  inputs."webview".type  = "github";
  inputs."webview".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webview".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket".dir   = "nimpkgs/w/websocket";
  inputs."websocket".owner = "riinr";
  inputs."websocket".ref   = "flake-pinning";
  inputs."websocket".repo  = "flake-nimble";
  inputs."websocket".type  = "github";
  inputs."websocket".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-plotly-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-plotly-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}